import 'package:cross_platform/presentation/pages/calls_page.dart';
import 'package:cross_platform/presentation/pages/camera_page.dart';
import 'package:cross_platform/presentation/pages/chat_page.dart';
import 'package:cross_platform/presentation/pages/status_page.dart';
import 'package:cross_platform/presentation/widgets/theme/flutter_style.dart';
import 'package:cross_platform/presentation/widgets/top_tab_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool _isSearch = false;
  int _currentPageIndex = 1;
  PageController _pageViewController = PageController(initialPage: 1);
  List<Widget> _pages = [CameraPage(), ChatPage(), StatusPage(), CallsPage()];

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
        appBar: _currentPageIndex != 0
            ? AppBar(
                elevation: 0.0,
                automaticallyImplyLeading: false,
                backgroundColor: !_isSearch ? primaryColor : Colors.transparent,
                title: !_isSearch
                    ? Text("WhatsApp")
                    : Container(height: 0.0, width: 0.0),
                flexibleSpace: !_isSearch
                    ? Container(
                        height: 0.0,
                        width: 0.0,
                      )
                    : null,
                actions: <Widget>[
                    InkWell(
                        onTap: () {
                          setState(() {
                            _isSearch = true;
                          });
                        },
                        child: Icon(Icons.search)),
                    SizedBox(width: 5)
                  ])
            : null,
        body: Column(
          children: <Widget>[
            !_isSearch
                ? _currentPageIndex != 0
                    ? TopTabBar(_currentPageIndex)
                    : Container(
                        height: 0.0,
                        width: 0.0,
                      )
                : Container(
                    height: 0.0,
                    width: 0.0,
                  ),
            Expanded(
                child: PageView.builder(
              itemCount: _pages.length,
              controller: _pageViewController,
              onPageChanged: (index) {
                setState(() {
                  _currentPageIndex = index;
                });
              },
              itemBuilder: (_, index) {
                return _pages[index];
              },
            ))
          ],
        ));
  }
}
