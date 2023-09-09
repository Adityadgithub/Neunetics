import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'privacypolicy_model.dart';
export 'privacypolicy_model.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:url_launcher/url_launcher.dart';

class PrivacypolicyWidget extends StatefulWidget {
  const PrivacypolicyWidget({Key? key}) : super(key: key);

  @override
  _PrivacypolicyWidgetState createState() => _PrivacypolicyWidgetState();
}

class _PrivacypolicyWidgetState extends State<PrivacypolicyWidget> {
  late PrivacypolicyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PrivacypolicyModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  InAppWebViewController? _webViewController;
  callurl() async {
    await _webViewController!.loadUrl(
        urlRequest: URLRequest(
      url: Uri.parse("https://neunetics.com/privacy"),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
        child: Stack(
          children: [
            Center(child: CircularProgressIndicator()),
            InAppWebView(
              initialOptions: InAppWebViewGroupOptions(
                android: AndroidInAppWebViewOptions(
                  allowContentAccess: true,
                  allowFileAccess: true,
                ),
                crossPlatform: InAppWebViewOptions(
                    // Add any additional options here
                    ),
              ),
              onWebViewCreated: (InAppWebViewController controller) {
                _webViewController = controller;
              },

              // onLoadStop: (String url) {
              // return ;
              // },
              initialUrlRequest: URLRequest(
                url: Uri.parse("https://neunetics.com/privacy"),
              ),
            ),
          ],
        ));
  }
}
