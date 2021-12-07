import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

class CallsPage extends StatelessWidget {
  const CallsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // body: ListView.builder(itemBuilder: itemCount: 10, itemBuilder:
      //     (BuildContext context, int index) {
      //   return SingleItemCallPage();
      // }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: primaryColor,
        child: Icon(
          Icons.add_call,
          color: Colors.white,
        ),
      ),
    );
  }
}
