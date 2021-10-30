import 'package:cross_platform/presentation/screens/registration_screen.dart';
import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            const Text(
              "Welcome to WhatsApp",
              style: TextStyle(
                fontSize: 20,
                color: primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 290,
              width: 290,
              child: Image.asset("assets/phone-background.png"),
            ),
            Column(
              children: <Widget>[
                const Text(
                  "Read our Privacy Policy, 'Agree and continue' to accept the Terms of Service",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 14),
                ),
                const SizedBox(
                  height: 30,
                ),
                MaterialButton(
                  color: greenColor,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => const RegistrationScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    "AGREE AND CONTINUE",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
