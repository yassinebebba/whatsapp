import 'package:cross_platform/presentation/pages/single_item_chat_page.dart';
import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (_, index) {
                return SingleItemChatPage();
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: primaryColor,
          onPressed: () {},
          child: Icon(Icons.chat)),
    );
  }
}
