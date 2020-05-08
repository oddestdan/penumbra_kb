import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

const String selectedUrl = 'https://penumbra3d.netlify.app/';

final Set<JavascriptChannel> jsChannels = [
  JavascriptChannel(
    name: 'Print',
    onMessageReceived: (JavascriptMessage message) {
      print(message.message);
    },
  ),
].toSet();

class WebViewPage extends StatelessWidget {
  final flutterWebViewPlugin = FlutterWebviewPlugin();

  @override
  Widget build(BuildContext context) {
    return WebviewScaffold(
      url: selectedUrl,
      javascriptChannels: jsChannels,
      mediaPlaybackRequiresUserGesture: false,
      appBar: AppBar(
        title: const Text(
          'Penumbra App',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: <Widget>[
          NavigationControls(flutterWebViewPlugin),
        ],
      ),
      // withZoom: true,
      withLocalStorage: true,
      hidden: true,
      initialChild: Container(
        color: Color.fromRGBO(64, 75, 96, .9),
        child: const Center(
          child: Text(
            'Loading...',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class NavigationControls extends StatelessWidget {
  const NavigationControls(this.flutterWebViewPlugin);

  final FlutterWebviewPlugin flutterWebViewPlugin;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            flutterWebViewPlugin.goBack();
          },
        ),
        IconButton(
          icon: const Icon(Icons.arrow_forward_ios),
          onPressed: () {
            flutterWebViewPlugin.goForward();
          },
        ),
        IconButton(
          icon: const Icon(Icons.autorenew),
          onPressed: () {
            flutterWebViewPlugin.reload();
          },
        ),
      ],
    );
  }
}
