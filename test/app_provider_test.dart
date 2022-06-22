import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mockito/mockito.dart';
import 'package:newquist_dev/app_provider.dart';

class MockCallbackFunction extends Mock {
  call();
}

void main() {
  late AppProvider provider;
  late MockCallbackFunction notifyListenerCallback;
  setUp(() {
    notifyListenerCallback = MockCallbackFunction();
    provider = AppProvider()..addListener(notifyListenerCallback);
    reset(notifyListenerCallback);
  });
  test('Test section', () {
    expect(provider.section, '');
    verifyNever(notifyListenerCallback());
    provider.section = '';
    verifyNever(notifyListenerCallback());
    provider.section = 'about';
    expect(provider.section, 'about');
    verify(notifyListenerCallback()).called(1);
  });
  test('Test theme', () {
    expect(provider.theme.colorScheme.primary.value, 4280391411);
    verifyNever(notifyListenerCallback());
    provider.theme = ThemeData(
      primaryColor: Colors.white,
      textTheme: GoogleFonts.montserratTextTheme(),
    );
    verifyNever(notifyListenerCallback());
    provider.theme = ThemeData(
      primaryColor: Colors.black,
    );
    verify(notifyListenerCallback()).called(1);
    expect(provider.theme.colorScheme.primary.value, 4280391411);
  });
  test('Test splash', () {
    expect(provider.showSplash, true);
    verifyNever(notifyListenerCallback());
    provider.showSplash = true;
    verifyNever(notifyListenerCallback());
    provider.showSplash = false;
    verify(notifyListenerCallback()).called(1);
    expect(provider.showSplash, false);
  });
}
