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
                  child: Image.asset("assets/profile-default.png")))
        ])
      ],
    ));
  }
}
