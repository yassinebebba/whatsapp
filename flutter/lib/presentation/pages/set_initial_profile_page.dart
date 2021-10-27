import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SetInitialProfileWidget extends StatefulWidget {
  final String phoneNumber;

  SetInitialProfileWidget({required this.phoneNumber});

  @override
  _SetInitialProfileWidgetState createState() =>
      _SetInitialProfileWidgetState();
}

class _SetInitialProfileWidgetState extends State<SetInitialProfileWidget> {
  TextEditingController _nameController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        children: <Widget>[
          Text(
            "Profile Info",
            style: TextStyle(
              color: greenColor,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            "Please provide your name and an optional Profile ",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
            ),
          ),
          _rowWidget(),
          Expanded(
              child: Align(
            alignment: Alignment.bottomCenter,
            child: MaterialButton(
              color: greenColor,
              onPressed: () => {},
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ))
        ],
      ),
    ));
  }

  Widget _rowWidget() {
    return Row(children: <Widget>[
      Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            color: textIconColorGray,
            borderRadius: BorderRadius.all(Radius.circular(25))),
        child: Icon(Icons.camera_alt),
      ),
      SizedBox(
        width: 8,
      ),
      Expanded(
        child: TextField(
          controller: _nameController,
          decoration: InputDecoration(
            hintText: "Enter your name",
          ),
        ),
      ),
      SizedBox(
        width: 8.0,
      ),
      Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
              color: textIconColorGray,
              borderRadius: BorderRadius.all(Radius.circular(2.0))))
    ]);
  }
}
