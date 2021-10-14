import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'WhatsApp',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Material Test Bar'),
            ),
            body: const Center(child: Text('test'))));
  }
}
