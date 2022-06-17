import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool error = false;

  @override
  Widget build(BuildContext context) {
    WebViewController controller;
    return !error
        ? WebView(
            initialUrl: 'https://banga.sd/dashboard',
            javascriptMode: JavascriptMode.unrestricted,
            onWebResourceError: (e) {
              print(e);
              setState(() {
                error = true;
              });
            },
            onWebViewCreated: (WebViewController webViewController) {
              controller = webViewController;
            },
          )
        : Scaffold(
            body: Center(
              child: Container(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      /*
                      Image.asset('images/404.png'),
                      SizedBox(
                        height: 15,
                      ),
                      Text("No Internet Connection"),
                      SizedBox(
                        height: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            setState(() {
                              error = false;
                            });
                          },
                          child: Text('try again'))
                          */
                    ]),
              ),
            ),
          );
  }
}
