import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/cupertino.dart';

class TopTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      decoration: BoxDecoration(color: primaryColor),
    );
  }
}

class barButton extends StatelessWidget {
  final String text;
  final Color borderColor;
  final Color textColor;
  final double borderWidth;

  const barButton(
      {Key? key,
      required this.text,
      required this.borderColor,
      required this.textColor,
      required this.borderWidth})
      : super(key: key);

  @override
  Widget build(BuildContext build) {
    return Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            border: Border(
          bottom: BorderSide(color: borderColor, width: borderWidth),
        )),
        child: Text(text,
            style: TextStyle(
                fontSize: 16, fontWeight: FontWeight.w500, color: textColor)));
  }
}
