import './account.dart';
import './email.dart';

class MockData {
  static List<Account> accounts(){
    return <Account>[
      Account(
       name: "Polle",
       lastName: "Lemmens",
       imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/210_7dd2d6f8-e762-45f8-813d-5a7fbf4622fb/plain/1/res/32",
       school: "Klein Seminarie",
      ),
      Account(
        name: "Robbe",
        lastName: "Nooyens",
        imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/210_df6525f6-b660-4d59-ab1e-7c43e6294dcd/plain/1/res/48",
        school: "Klein Seminarie",
      ),
      Account(
        name: "Wout",
        lastName: "Van Loon",
        imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/210_7decd7d5-462e-4d7e-84ca-61bc1f7c9a1b/plain/1/res/32",
        school: "Klein Seminarie",
      ),
      Account(
        name: "Lieve",
        lastName: "Nouws",
        imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/f/plain/1/res/32",
        school: "Klein Seminarie",
      ),
      Account(
        name: "Smartschool",
        lastName: "Beheer KS",
        imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/m/plain/1/res/32",
        school: "Klein Seminarie",
      ),
      Account(
        name: "Dieter",
        lastName: "De Keyser",
        imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/210_b99c7c8b-6f16-4720-ad82-f1b3c46130ec/plain/1/res/32",
        school: "Klein Seminarie",
        emails: [
          Email(
            from: "Ariane Maes",
            imgURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/210_55eb744f-26ed-4747-8c9c-78b47a5df927/plain/1/res/32",
            subject: "Examen Aardrijkskunde",
            date: "DONDERDAG 28 NOVEMBER 2019 21:53"),
        ]
      ),
      Account(
        name: "Lauren",
        lastName: "Aertsen",
        imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/210_162a9c45-968d-4ad6-a510-e3a51f9c351d/plain/1/res/32",
        school: "Klein Seminarie",
      ),
      Account(
        name: "Goedele",
        lastName: "Goossens",
        imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/210_b51389fc-bf78-45b2-b842-eadbf1603183/plain/1/res/32",
        school: "Klein Seminarie",
      ),
      Account(
        name: "Wendy",
        lastName: "Geerts",
        imageURL: "https://klein-seminarie.smartschool.be/User/Userimage/hashimage/hash/210_b9bdecfa-ea90-4fd5-9dac-d1ef7ff62199/plain/1/res/32",
        school: "Klein Seminarie",
      ),
      
    ];
  }
}