import 'package:cross_platform/presentation/pages/set_initial_profile_page.dart';
import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhoneVerificationPage extends StatefulWidget {
  late final String phoneNumber;

  @override
  _PhoneVerificationPageState createState() => _PhoneVerificationPageState();
}

class _PhoneVerificationPageState extends State<PhoneVerificationPage> {
  String get _phoneNumber => widget.phoneNumber;
  TextEditingController _pinCodeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(""),
                Text(
                  "Verify your phone number",
                  style: TextStyle(
                      fontSize: 18,
                      color: greenColor,
                      fontWeight: FontWeight.w500),
                ),
                Icon(Icons.more_vert)
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "WhatsApp Clone will send and SMS message (carrier charges may apply) to verify your phone number. Enter your country code and phone number:",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: MaterialButton(
                  color: greenColor,
                  onPressed: () => {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (_) => SetInitialProfileWidget(
                                  phoneNumber: '141414',
                                )))
                  },
                  child: Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
