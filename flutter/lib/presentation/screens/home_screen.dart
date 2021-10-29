import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearch = false;

  _buildSearch() {
    return Container(
        height: 45,
        margin: EdgeInsets.only(top: 25),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(.3),
                spreadRadius: 1,
                offset: Offset(0.0, 0.50))
          ],
        ),
        child: TextField(
            decoration: InputDecoration(
                hintText: "Search...",
                prefixIcon: InkWell(
                  onTap: () {},
                  child: Icon(Icons.arrow_back),
                ))));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            elevation: 0.0,
            automaticallyImplyLeading: false,
            backgroundColor:
                _isSearch == true ? primaryColor : Colors.transparent,
            title: _isSearch == false
                ? Text("WhatsApp")
                : Container(height: 0.0, width: 0.0),
            flexibleSpace: _isSearch == false
                ? Container(
                    height: 0.0,
                    width: 0.0,
                  )
                : _buildSearch(),
            actions: <Widget>[
              InkWell(
                  onTap: () {
                    setState(() {
                      _isSearch = true;
                    });
                  },
                  child: Icon(Icons.search)),
              SizedBox(width: 5)
            ]),
        body: Column(
          children: <Widget>[
            TabBar(),
          ],
        ));
  }
}
