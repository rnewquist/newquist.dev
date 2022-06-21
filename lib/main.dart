import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:newquist_dev/app_provider.dart';
import 'package:newquist_dev/routes/app_route_parser.dart';
import 'package:newquist_dev/routes/app_router.dart';
import 'package:newquist_dev/util/launch.dart';
import 'package:provider/provider.dart';
import 'package:url_strategy/url_strategy.dart';
import 'package:newquist_dev/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setPathUrlStrategy();

  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider.value(value: AppProvider()),
    ],
    child: const App(),
  ));
}

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  final AppRouteParser routeParser = AppRouteParser();
  late AppRouterDelegate router;
  @override
  void initState() {
    router = AppRouterDelegate(context.read<AppProvider>());
    scheduleMicrotask(() {
      Launch().run(context);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: context.select((AppProvider m) => m.theme),
      debugShowCheckedModeBanner: false,
      routeInformationParser: routeParser,
      routerDelegate: router,
      title: 'RNDev',
    );
  }
}
