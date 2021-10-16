import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_picker_dialog.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class RegistrationScreen extends StatefulWidget {
  const RegistrationScreen({Key? key}) : super(key: key);

  get controller => null;

  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  static Country _countryList = CountryPickerUtils.getCountryByPhoneCode("44");
  String _countryCode = _countryList.phoneCode;
  String _phoneNum = "";

  TextEditingController _phoneAuthController = TextEditingController();

  // Future<String> createUser(String phoneNumber) async {
  //   final String apiUrl = "";
  //   final response =
  //       await http.post(Uri.parse(apiUrl), body: {"phone_number": phoneNumber});
  //   String token = response.headers.values.last;

  //   if (response.statusCode == 200) {
  //     Fluttertoast.showToast(msg: response.body);
  //     context
  //   , MaterialPageRoute(builder: (context) => HomeScreen());
  //   } else if (response.statusCode == 400) {
  //   Fluttertoast.showToast(msg: response.body);
  //   } else if (response.statusCode == 412) {
  //   Fluttertoast.showToast(msg: response.body);
  //   } else if (response.statusCode == 500) {
  //   Fluttertoast.showToast(msg: response.body);
  //   }
  //   return
  //   null;
  // }
  //
  // );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
        child: Column(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const <Widget>[
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
            const Text(
              "WhatsApp Clone will send and SMS message (carrier charges may apply) to verify your phone number. Enter your country code and phone number:",
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            ListTile(
                onTap: _openCountryList, title: _buildDialogItem(_countryList)),
            Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border(
                          bottom: BorderSide(
                    color: greenColor,
                  ))),
                  child: Text(""),
                ),
                Expanded(
                  child: Container(
                    height: 40,
                    child: TextField(
                      controller: _phoneAuthController,
                      decoration: InputDecoration(hintText: "Phone Number"),
                    ),
                  ),
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.bottomCenter,
                        child: MaterialButton(
                            color: greenColor,
                            onPressed: () => {},
                            child: Text("Next",
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                )))))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
