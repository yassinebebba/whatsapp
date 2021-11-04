 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

class StatusPage extends StatelessWidget {
  const StatusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Scaffold(body: Stack(children: <Widget>[_customActionButton()])));
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
