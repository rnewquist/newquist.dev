import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html';
import 'dart:ui' as ui;

class PrivacyPolicyPage extends StatefulWidget {
  const PrivacyPolicyPage({Key? key}) : super(key: key);

  @override
  State<PrivacyPolicyPage> createState() => _PrivacyPolicyPageState();
}

class _PrivacyPolicyPageState extends State<PrivacyPolicyPage> {
  @override
  void initState() {
    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(
        'video-container',
        (int viewId) => IFrameElement()
          ..id = 'my-iframe'
          ..width = '100%'
          ..height = '100%'
          ..src = 'assets/privacypolicy.html'
          ..style.border = 'none');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const HtmlElementView(
      viewType: 'video-container',
    );
  }
}
