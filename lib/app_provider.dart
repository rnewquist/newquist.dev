import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:url_launcher/url_launcher.dart';

class AppProvider extends ChangeNotifier {
  Future<void> initialize() async {
    await FirebaseAnalytics.instance.logEvent(
      name: 'screen_view',
      parameters: {
        'firebase_screen': 'Launch',
        'firebase_screen_class': 'Logo',
      },
    );
  }

  String _section = '';
  String get section => _section;
  set section(String value) {
    if (value != _section) {
      _section = value;
      notifyListeners();
    }
  }

  ThemeData _theme = ThemeData(
    primaryColor: Colors.white,
    textTheme: GoogleFonts.montserratTextTheme(),
  );
  ThemeData get theme => _theme;
  set theme(ThemeData theme) {
    if (theme != _theme) {
      _theme = theme;
      notifyListeners();
    }
  }

  bool _showSplash = true;
  bool get showSplash => _showSplash;
  set showSplash(bool value) {
    if (value != _showSplash) {
      _showSplash = value;
      notifyListeners();
    }
  }

  Future<void> onURLPress(String url) async {
    await launchUrl(Uri.parse(url));
  }
}
