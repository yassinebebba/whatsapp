import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(body: Stack(children: <Widget>[_customActionButton(),
          Column(
            children: <Widget>[
              _storyWidget(),
            ],
          )
        ])));
  }
}

Widget _customActionButton() {
  return Positioned(
      right: 10,
      bottom: 15,
      child: Column(children: <Widget>[
        Container(
          height: 45,
          width: 45,
          decoration: BoxDecoration(color: Colors.grey[200], boxShadow: [
            BoxShadow(
                offset: Offset(0, 4.0),
                blurRadius: 0.50,
                color: Colors.black.withOpacity(.2),
                spreadRadius: 0.10)
          ]),
          child: Icon(Icons.edit, color: Colors.blueGrey),
        ),
        SizedBox(height: 8.0),
        Container(
          height: 55,
          width: 55,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(Radius.circular(50)),
              boxShadow: [
                BoxShadow(
                    offset: Offset(0, 4.0),
                    blurRadius: 0.50,
                    color: Colors.black.withOpacity(.2),
                    spreadRadius: 0.10)
              ]),
          child: Icon(Icons.camera_alt, color: Colors.white),
        )
      ]));
}

Widget _storyWidget() {
  return Container(
      child: Container(
          child: Row(children: <Widget>[
    Padding(
      padding: const EdgeInsets.all(2.0),
      child: Image.asset(
        "assets/profile-default.png",
        width: 30,
        height: 30,
      ),
    ),
    Positioned(
        right: 0,
        bottom: 0,
        child: Container(
          width: 20,
          height: 20,
          decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              )),
          child: Icon(
            Icons.add,
            color: Colors.white,
            size: 15,
          ),
        )),
    SizedBox(
      width: 12,
    ),
    Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "My status",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
        ),
        SizedBox(
          height: 2,
        ),
        Text("Tap to add status update"),
      ],
    ),
  )
}
