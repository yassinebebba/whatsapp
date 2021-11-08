import 'package:cross_platform/presentation/pages/single_item_chat_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SingleItemStoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(children: <Widget>[
                  Container(
                    height: 55,
                    width: 55,
                    // rounded Rectangle
                    child: ClipRRect(
                        borderRadius: BorderRadius.all(Radius.circular(25)),
                        child: Image.asset("assets/profile-default.png")),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          SingleItemChatPage.getRandomName(),
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                        SizedBox(height: 5),
                        Text(
                          SingleItemChatPage.getRandomTime().toString(),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        )
                      ])
                ]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 60, right: 10),
              // line between users
              child: Divider(
                thickness: 1.50,
              ),
            ),
          ],
        ));
  }
}
