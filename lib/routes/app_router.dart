import 'package:flutter/material.dart';
import 'package:newquist_dev/app_provider.dart';
import 'package:newquist_dev/main_app_scaffold.dart';
import 'package:newquist_dev/pages/home_page.dart';
import 'package:newquist_dev/pages/privacy_policy_page.dart';
import 'app_link.dart';

RectTween _createRectTween(Rect? begin, Rect? end) {
  return MaterialRectArcTween(begin: begin, end: end);
}

class AppRouterDelegate extends RouterDelegate<AppLink> with ChangeNotifier {
  AppRouterDelegate(this.appProvider)
      : _heroController = HeroController(createRectTween: _createRectTween) {
    appProvider.addListener(notifyListeners);
  }
  final HeroController _heroController;
  final AppProvider appProvider;
  final GlobalKey<NavigatorState> _navKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MainAppScaffold(
      pageNavigator: Navigator(
          key: _navKey,
          observers: [_heroController],
          onPopPage: _handleNavigatorPop,
          pages: [
            if (appProvider.section == 'privacy_policy')
              const PrivacyPolicyPage()
            else
              HomePage(
                section: appProvider.section,
              ),
          ].map(_wrapContentInPage).toList()),
    );
  }

  Page _wrapContentInPage(Widget e) {
    return MaterialPage<void>(child: e);
  }

  bool tryGoBack() {
    return true; //false lets the whole app go into background
  }

  @override
  // Return an AppLink, representing the current app state
  AppLink get currentConfiguration => AppLink()..section = appProvider.section;

  bool _handleNavigatorPop(Route<dynamic> route, dynamic result) {
    // Ask the route if it can handle pop internally...
    if (route.didPop(result)) {
      // If not, we pop one level in our stack
      return tryGoBack();
    }
    return false;
  }

  @override
  Future<bool> popRoute() async => tryGoBack();

  @override
  Future<void> setNewRoutePath(AppLink configuration) async {
    appProvider.section = configuration.section ?? '';
    debugPrint(configuration.toLocation());
    return;
  }

  @override
  Future<void> setInitialRoutePath(AppLink configuration) async {
    await setNewRoutePath(configuration);
  }
}
