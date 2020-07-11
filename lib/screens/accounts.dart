import 'package:flutter/material.dart';
import '../data/account.dart';
import '../data/mockdata.dart';
import '../utils.dart';
import '../styles.dart';
import 'add_account.dart';
import 'home.dart';

class Accounts extends StatelessWidget {
  final List<Account> accounts = MockData.accounts();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFBf54922),
            //leading: Icon(Icons.chevron_left),
            title: Row(
              children: [
                Icon(Icons.chevron_left),
                Container(
                  child: Text("Accounts"),
                  margin: EdgeInsets.only(left: 20),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              mainAxisSize: MainAxisSize.min,
            ),
          ),
          body: Container(
              padding: EdgeInsets.all(10),
              child: ListView.separated(
                itemCount: accounts.length + 2,
                itemBuilder: _accountItem,
                separatorBuilder: _divider,
              )),
        ));
  }

  Widget _divider(BuildContext context, int index) {
    return (index != accounts.length) ? Divider() : Container();
  }

  Widget _accountItem(BuildContext context, int item) {
    if (item < accounts.length)
      return ListTile(
        title: _openHome(
            context,
            accounts[item],
            Container(
                child: Row(children: [
              Utils.clipImageCirle(accounts[item].imageURL, 30),
              Container(
                  margin: EdgeInsets.only(left: 15),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            "${accounts[item].name} ${accounts[item].lastName}",
                            style: Styles.textBold),
                        Text("${accounts[item].school}", style: Styles.text)
                      ]))
            ]))),
        trailing: _openHome(context, accounts[item], Icon(Icons.chevron_right)),
        dense: true,
      );
    else if (item == accounts.length)
      return ListTile(
        leading: Icon(Icons.add, size: 40, color: Colors.green),
        title: Text("Account toevoegen", style: Styles.text),
        dense: true,
      );
    else
      return Divider();
  }

  Widget _openHome(BuildContext context, Account account, Widget widget) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Home(account)));
        },
        child: widget);
  }
}
