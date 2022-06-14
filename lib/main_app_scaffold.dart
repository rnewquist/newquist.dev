import 'package:flutter/material.dart';
import 'package:newquist_dev/navigator_bar.dart';
import 'package:newquist_dev/util/background.dart';

/// Wraps the entire app, providing it with various helper classes and wrapper widgets.
class MainAppScaffold extends StatefulWidget {
  const MainAppScaffold({Key? key, required this.pageNavigator})
      : super(key: key);
  final Widget pageNavigator;

  @override
  State<MainAppScaffold> createState() => _MainAppScaffoldState();
}

class _MainAppScaffoldState extends State<MainAppScaffold>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Background(
        backgroundColor: Colors.grey[300]!,
        backgroundColorSecondary: Colors.grey[100]!,
        backgroundColorAccent: Colors.grey[100]!,
        child: Column(
          children: [
            const NavigatorBar(),
            Expanded(child: widget.pageNavigator),
          ],
        ),
      ),
    );
  }
}
