import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool error = false;
  @override
  Widget build(BuildContext context) {
    return error
        ? Container()
        : WebView(
            initialUrl: 'https://banga.sd/home',
            javascriptMode: JavascriptMode.unrestricted,
            onWebResourceError: (e) {
              setState(() {
                error = true;
              });
            },
          );
  }
}
