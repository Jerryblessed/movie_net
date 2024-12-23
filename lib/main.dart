import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

void main() {
  runApp(MyWebBrowser());
}

class MyWebBrowser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dart Web Browser',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WebBrowserPage(),
    );
  }
}

class WebBrowserPage extends StatefulWidget {
  @override
  _WebBrowserPageState createState() => _WebBrowserPageState();
}

class _WebBrowserPageState extends State<WebBrowserPage> {
  late final WebViewController _controller;
  final String _currentUrl = "https://movienet.pythonanywhere.com/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: WebViewWidget(
        controller: WebViewController()
          ..setJavaScriptMode(JavaScriptMode.unrestricted)
          ..loadRequest(Uri.parse(_currentUrl)),
      ),
    );
  }
}
