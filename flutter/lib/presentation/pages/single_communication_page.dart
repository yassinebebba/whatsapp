import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '../widgets/theme/flutter_style.dart';

class SingleCommunicationPage extends StatefulWidget {
  final String senderUId;
  final String recipientUId;
  final String senderName;
  final String recipientName;
  final String recipientPhoneNumber;
  final String senderPhoneNumber;

  const SingleCommunicationPage(
      {Key? key,
      required this.senderUId,
      required this.recipientUId,
      required this.senderName,
      required this.recipientName,
      required this.recipientPhoneNumber,
      required this.senderPhoneNumber})
      : super(key: key);

  @override
  _SingleCommunicationPageState createState() =>
      _SingleCommunicationPageState();
}

class _SingleCommunicationPageState extends State<SingleCommunicationPage> {
  TextEditingController _textMessageController = TextEditingController();
  ScrollController _scrollController = ScrollController();

  @override
  void initState() {}

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(""),
          automaticallyImplyLeading: false,
          actions: [
            Icon(Icons.videocam),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.call),
            SizedBox(
              width: 10,
            ),
            Icon(Icons.more_vert),
          ],
          flexibleSpace: Container(
            margin: EdgeInsets.only(top: 30),
            child: Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                      size: 22,
                    )),
                Container(
                  height: 40,
                  width: 40,
                  child: Image.asset('assets/profile_default.png'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "${widget.recipientName}",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
              ],
            ),
          ),
        ),
        body: Container());
  }
}

Widget _bodyWidget() {
  return Stack(
    children: [
      Container(
        width: double.infinity,
        child: Image.asset(
          "assets/background_wallpaper.png",
          fit: BoxFit.cover,
        ),
      ),
      Column(
        children: [
          _sendMessageTextField(),
        ],
      )
    ],
  );
}

Widget _sendMessageTextField() {
  return Container(
    margin: EdgeInsets.only(bottom: 10, left: 4, right: 4),
    child: Row(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(80)),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.2),
                      offset: Offset(0.0, 0.50),
                      spreadRadius: 1,
                      blurRadius: 1),
                ]),
            child: Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.insert_emoticon,
                  color: Colors.grey[500],
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 60,
                    ),
                    child: Scrollbar(
                      child: TextField(
                        maxLines: null,
                        style: TextStyle(fontSize: 14),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Type a message",
                        ),
                      ),
                    ),
                  ),
                ),
                Row(
                  children: [
                    Icon(Icons.link),
                    SizedBox(
                      width: 10,
                    ),
                    Icon(Icons.camera_alt)
                  ],
                ),
                SizedBox(
                  width: 15,
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 8,
        ),
        InkWell(
          onTap: () {},
          child: Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: primaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(50),
              ),
            ),
            child: Icon(
              Icons.send,
              color: textIconColor,
            ),
          ),
        )
      ],
    ),
  );
}
