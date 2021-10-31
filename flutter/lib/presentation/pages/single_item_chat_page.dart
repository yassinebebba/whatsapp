import 'package:flutter/cupertino.dart';

class SingleItemChatPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      children: <Widget>[
        Row(children: <Widget>[
          Container(
            height: 55,
            width: 55,
            // rounded Rectangle
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(25)),
                child: Image.asset("assets/profile-default.png")),
          ),
          SizedBox(
            width: 10,
          ),
          Column(children: <Widget>[
            Text(getRandomName()),
            SizedBox(height: 5),
          ])
        ])
      ],
    ));
  }

  // random usernames
  static String getRandomName() {
    List<String> names = [
      "Baklava-kun",
      "XiaomiBoy",
      "MadCarlo",
      "Doggie-chan",
      "Chiqita",
      "Umairdro",
      "Marlboro",
      "Enissay-sama",
      "Sinnaoi",
      "Malbec",
      "Articuna",
      "Zapata",
      "Pikaru",
      "76chan",
      "FrenchTunisLady"
    ];
    names.shuffle();
    return names.removeLast();
  }
}
