import 'package:cross_platform/domain/entities/contact.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/user.dart';

class SelectContactPage extends StatefulWidget {
  final UserEntity userInfo;

  bool deviceNumbersLoaded = false;
  bool userLoaded = false;
  SelectContactPage({Key? key, required this.userInfo}) : super(key: key);

  @override
  _SelectContactPageState createState() => _SelectContactPageState();
}

class _SelectContactPageState extends State<SelectContactPage> {
  bool get _deviceNumbersLoaded => widget.deviceNumbersLoaded;
  bool get _userLoaded => widget.userLoaded;
  List<ContactEntity> contacts = [];
  @override
  Widget build(BuildContext context) {
    if (_deviceNumbersLoaded) {}
    if (_userLoaded) {}

    return Scaffold(
        appBar: AppBar(
      title: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text("Select Contact"),
        Text("${contacts.length}, contacts", style: TextStyle(fontSize: 14))
      ]),
      actions: [Icon(Icons.search), Icon(Icons.more_vert)],
    ));
  }
}
