import 'package:flutter/cupertino.dart';
import 'package:webview_flutter/webview_flutter.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  bool error = false;
  @override
  Widget build(BuildContext context) {
    return error
        ? Container()
        : WebView(
            initialUrl: 'https://banga.sd/home-search-result',
            javascriptMode: JavascriptMode.unrestricted,
            onWebResourceError: (e) {
              setState(() {
                error = true;
              });
            },
          );
    ;
  }
}
