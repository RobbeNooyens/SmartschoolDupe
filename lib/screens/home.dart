import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../data/account.dart';
import 'package:smartschool_dupe/utils.dart';
import '../data/email.dart';

class Home extends StatelessWidget {
  final Account account;

  Home(this.account);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.menu),
          title: Text("Ongelezen berichten"),
          backgroundColor: Color(0xFFBf54922),
        ),
        body: Container(
            alignment: Alignment.center,
            child: account.emails == null ? _emptyHome() : _emails(context)),
        bottomNavigationBar: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Divider(),
            SingleChildScrollView(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  _bottomIcon("berichten.png"),
                  _bottomIcon("schoolagenda.png"),
                  _bottomIcon("skore.png"),
                  _bottomIcon("volgsysteem.png")
                ]))
          ],
        ));
  }

  Widget _emails(BuildContext context){
    if(account.emails.length == 0) return _emptyHome();
    return ListView.separated(
      itemCount: account.emails.length + 1,
      itemBuilder: _email,
      separatorBuilder: _seperate,
    );
  }

  Widget _seperate(BuildContext context, int item){
    return Divider();
  }

  Widget _email(BuildContext context, int item) {
    if(item == account.emails.length) return Container();
    Email email = account.emails[item];
    return ListTile(
      title: Row(
        children: [
          Utils.clipImageCirle(email.imgURL, 30),
          Container(
            margin: EdgeInsets.only(left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(email.from, style: TextStyle(color: Colors.red, fontSize: 14)),
              Text(email.subject, style: TextStyle(color: Colors.black, fontSize: 12)),
              Text(email.date, style: TextStyle(color: Colors.grey, fontSize: 10)),
            ],
          )
          )
        ]
      ),
    );
  }

  Widget _emptyHome() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
        foregroundDecoration: BoxDecoration(
          color: Colors.grey,
          backgroundBlendMode: BlendMode.saturation,
        ),
        child: Image.asset(
          "assets/icons/berichten.png",
          width: 80,
        ),
      ),
      Text("Je hebt al je berichten gelezen.",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
      Text("Vernieuwen",
          style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold))
    ]);
  }

  Widget _bottomIcon(String iconName) {
    return Container(
      padding: EdgeInsets.only(bottom: 15, top: 5),
      child: Image.asset(
        "assets/icons/$iconName",
        height: 20,
      ),
    );
  }
}
