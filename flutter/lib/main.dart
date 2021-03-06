import 'package:cross_platform/presentation/screens/welcome_screen.dart';
import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'WhatsApp',
        theme: ThemeData(primaryColor: primaryColor),
        routes: {
          "/": (context) {
            return WelcomeScreen();
          }
        });
  }
}
