import 'package:cross_platform/domain/entities/user.dart';
import 'package:cross_platform/presentation/pages/select_contact_page.dart';
import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            height: 150,
            width: 150,
            decoration: BoxDecoration(
              color: greenColor.withOpacity(.5),
              borderRadius: BorderRadius.all(Radius.circular(100)),
            ),
            child: Icon(
              Icons.message,
              color: Colors.white.withOpacity(.6),
              size: 40,
            ),
          ),
          Align(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Text(
                "Start chat with your friends and family,\n on WhatsApp Clone",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 14, color: Colors.black.withOpacity(.4)),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primaryColor,
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (_) => SelectContactPage(
                        userInfo: UserEntity(
                            name: "Name",
                            email: "email@",
                            phoneNumber: "11515",
                            isOnline: false,
                            uId: '1515',
                            profileUrl: 'google.com',
                            statusId: '555'),
                      )));
        },
        child: Icon(Icons.chat),
      ),
    );
  }
}
