import 'dart:io';

import 'package:shopeefood_clone/utils/common_import.dart';
import 'package:shopeefood_clone/widgets/app_bar/app_bar_default.dart';
import 'package:shopeefood_clone/widgets/loading/loading_indicator.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ScreenWebView extends StatefulWidget {
  final String title;
  final String url;

  const ScreenWebView({Key? key, required this.title, required this.url})
      : super(key: key);

  @override
  State<ScreenWebView> createState() => _ScreenWebViewState();
}

class _ScreenWebViewState extends State<ScreenWebView> {
  WebViewController? controller;
  bool isLoading = true;
  String title = '';

  @override
  void initState() {
    super.initState();
    title = widget.title;
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    final colors = AppColor(context);
    return Scaffold(
      backgroundColor: colors.homeBg,
      body: SafeArea(
        child: Column(
          children: [
            AppBarDefault(title: title),
            Expanded(
              child: buildWebView(),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildWebView() {
    if (Platform.isAndroid || Platform.isIOS) {
      return Stack(children: [
        WebView(
          initialUrl: widget.url,
          javascriptMode: JavascriptMode.unrestricted,
          onWebViewCreated: (WebViewController controller) {
            this.controller = controller;
          },
          onPageFinished: (val) {
            setState(() {
              isLoading = false;
            });
            controller?.getTitle().then((value) {
              setState(() {
                if (value != null) {
                  title = value;
                }
              });
            });
          },
        ),
        if (isLoading)
          const SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Center(
              child: DefaultLoadingIndicator(),
            ),
          )
      ]);
    }
    return Container();
  }
}
