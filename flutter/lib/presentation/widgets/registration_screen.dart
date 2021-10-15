import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              children: <Widget>[
                Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const <Widget>[
                      Text(""),
                      Text(
                        "Verify your phone number",
                        style: TextStyle(
                            fontSize: 18,
                            color: greenColor,
                            fontWeight: FontWeight.w500),
                      ),
                      Icon(Icons.more_vert)
                    ])
              ],
            )));
  }
}
