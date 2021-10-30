import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

class TopTabBar extends StatelessWidget {
  final int index;

  TopTabBar(this.index);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: const BoxDecoration(color: primaryColor),
      child: Row(
        children: <Widget>[
          Container(
            width: 40,
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
            ),
          ),
          Expanded(
              child: TabBarButton(
            text: "CHATS",
            textColor: index == 1 ? textIconColor : textIconColorGray,
            borderColor: index == 1 ? textIconColor : Colors.transparent,
          )),
          Expanded(
            child: TabBarButton(
              text: "STATUS",
              textColor: index == 2 ? textIconColor : textIconColorGray,
              borderColor: index == 2 ? textIconColor : Colors.transparent,
            ),
          ),
          Expanded(
            child: TabBarButton(
              text: "CALLS",
              textColor: (index == 3 ? textIconColor : textIconColorGray),
              borderColor: index == 3 ? textIconColor : Colors.transparent,
            ),
          ),
        ],
      ),
    );
  }
}

class TabBarButton extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color? textColor;
  final double borderWidth = 3.0;

  TabBarButton({
    required this.text,
    required this.borderColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: borderColor, width: borderWidth),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: textColor,
        ),
      ),
    );
  }
}
