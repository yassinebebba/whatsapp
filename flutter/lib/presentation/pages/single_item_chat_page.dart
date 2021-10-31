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

  static String getRandomMessage() {
    List<String> messages = [
      "I saw you in the street. You like ignoring people.",
      "Why, you never respond?",
      "What did you get?",
      "I lost my dog. He wasn't home.",
      "Sarada is named after Salad",
      "good evening",
      "I chose psychology over CS.",
      "I didn't go either",
      "Only time will tell.",
      "He was there but she hid.",
      "Blizzard fanboy?",
      "She said you did.",
      "Abdallah called me about Fola.",
      "Xi said you would come.",
      "Toms had 98% average."
    ];
    messages.shuffle();
    return messages.removeLast();
  }

  static Object getRandomTime() {
    var random = Random();
    int hour = random.nextInt(24);
    int minute = random.nextInt(60);
    var result = hour < 10 ? "0$hour" : hour;
    result = minute < 10 ? "$result:$minute\0" : "$result:$minute";
    return result;
  }
}
