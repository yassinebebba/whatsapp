import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../domain/entities/contact.dart';
import '../../domain/entities/user.dart';
import '../widgets/theme/flutter_style.dart';

class SelectContactPage extends StatefulWidget {
  final UserEntity userInfo;

  SelectContactPage({required this.userInfo});

  @override
  _SelectContactPageState createState() => _SelectContactPageState();
}

class _SelectContactPageState extends State<SelectContactPage> {
  late bool _userLoaded = true;

  @override
  Widget build(BuildContext context) {
    if (_deviceNumbersLoaded) {}
    if (_userLoaded) {}

    return Scaffold(
        appBar: AppBar(
          backgroundColor: greenColor,
          title: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text("Select Contact"),
              Text(
                "${contacts.length} contacts",
                style: const TextStyle(fontSize: 14),
              ),
            ],
          ),
          actions: [
            Icon(Icons.search),
            Icon(Icons.more_vert),
          ],
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            children: [
              _newGroupButton(),
              SizedBox(
                height: 10,
              ),
              _newContactButton(),
              SizedBox(
                height: 10,
              ),
              _listContact(contacts),
            ],
          ),
        ),
      );
    }
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget _newGroupButton() {
    return Container(
      child: Row(
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
                color: greenColor,
                borderRadius: BorderRadius.all(Radius.circular(40))),
            child: Icon(
              Icons.people,
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 15,
          ),
          Text(
            "New Group",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _newContactButton() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.all(Radius.circular(40))),
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Text(
                "New contact",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Icon(
            Icons.qr_code,
            color: greenColor,
          )
        ],
      ),
    );
  }

  Widget _listContact(List<ContactEntity> contacts) {
    return Expanded(
      child: ListView.builder(
        itemCount: contacts.length,
        itemBuilder: (ctx, index) {
          return InkWell(
            onTap: () {},
            child: Container(
              margin: EdgeInsets.only(bottom: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            borderRadius:
                                BorderRadius.all(Radius.circular(50))),
                        child: Image.asset('assets/profile-default.png'),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "${contacts[index].label}",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              "Hey there! I am Using WhatsApp",
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
