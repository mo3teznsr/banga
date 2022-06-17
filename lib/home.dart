import 'package:banga/dashboard.dart';
import 'package:banga/homepage.dart';
import 'package:banga/search.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';
import 'dart:io';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedItem = 0;
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) {
      WebView.platform = SurfaceAndroidWebView();
    }
  }

  final items = [HomePage(), Search(), Dashboard()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          iconSize: 30,
          onTap: (value) {
            setState(() {
              selectedItem = value;
            });
          },
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.business,
                  color: selectedItem == 0 ? Colors.redAccent : Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.search,
                  color: selectedItem == 1 ? Colors.redAccent : Colors.grey,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  color: selectedItem == 2 ? Colors.redAccent : Colors.grey,
                ),
                label: ''),
          ],
        ),
        body: SafeArea(
          child: items[selectedItem],
        ));
  }
}
