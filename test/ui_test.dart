import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:newquist_dev/app_provider.dart';
import 'package:newquist_dev/ui/app_card.dart';
import 'package:newquist_dev/ui/navigator_bar.dart';
import 'package:newquist_dev/ui/work_card.dart';
import 'package:newquist_dev/util/commands.dart';
import 'package:provider/provider.dart';

import 'mocks.mocks.dart';

void main() {
  late MockAppProvider appProviderMock;

  setUp(() {
    appProviderMock = MockAppProvider();
  });

  Future<void> initializeWidget(WidgetTester tester, Widget child) async {
    await tester.pumpWidget(
      MultiProvider(
        providers: [
          ChangeNotifierProvider<AppProvider>(create: (_) => appProviderMock),
        ],
        child: MaterialApp(
          home: Builder(
            builder: (BuildContext context) {
              setContext(context);
              return child;
            },
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  group('App Card', () {
    Widget child = Container(key: const ValueKey('testing_container'));
    String name = 'THIS IS A TEST';
    testWidgets('Without iOS or Android', (WidgetTester tester) async {
      await initializeWidget(
        tester,
        AppCard(
          child: child,
          name: name,
        ),
      );
      expect(find.byKey(const ValueKey('testing_container')), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);
      expect(find.text('COMING SOON'), findsOneWidget);
      expect(find.text('Android'), findsNothing);
      expect(find.text('iOS'), findsNothing);
    });
    testWidgets('Without iOS', (WidgetTester tester) async {
      await initializeWidget(
        tester,
        AppCard(
          child: child,
          name: name,
          androidURL: 'android',
        ),
      );
      expect(find.byKey(const ValueKey('testing_container')), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);
      expect(find.text('COMING SOON'), findsNothing);
      expect(find.text('Android'), findsOneWidget);
      expect(find.text('iOS'), findsNothing);

      await tester.tap(find.text('Android'));
      await tester.pump();

      verify(appProviderMock.onURLPress('android')).called(1);
    });
    testWidgets('Without Android', (WidgetTester tester) async {
      await initializeWidget(
        tester,
        AppCard(
          child: child,
          name: name,
          iosURL: 'ios',
        ),
      );
      expect(find.byKey(const ValueKey('testing_container')), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);
      expect(find.text('COMING SOON'), findsNothing);
      expect(find.text('Android'), findsNothing);
      expect(find.text('iOS'), findsOneWidget);

      await tester.tap(find.text('iOS'));
      await tester.pump();

      verify(appProviderMock.onURLPress('ios')).called(1);
    });
    testWidgets('With iOS and Android', (WidgetTester tester) async {
      await initializeWidget(
        tester,
        AppCard(
          child: child,
          name: name,
          androidURL: 'android',
          iosURL: 'ios',
        ),
      );
      expect(find.byKey(const ValueKey('testing_container')), findsOneWidget);
      expect(find.byType(Card), findsOneWidget);
      expect(find.text('COMING SOON'), findsNothing);
      expect(find.text('Android'), findsOneWidget);
      expect(find.text('iOS'), findsOneWidget);

      await tester.tap(find.text('iOS'));
      await tester.pump();

      verify(appProviderMock.onURLPress('ios')).called(1);

      await tester.tap(find.text('Android'));
      await tester.pump();

      verify(appProviderMock.onURLPress('android')).called(1);
    });
  });
  group('Work Card', () {
    Widget child = Container(key: const ValueKey('testing_container'));
    DateTime startDate = DateTime(1992, 1);
    DateTime endDate = DateTime(2022, 1);
    testWidgets(
      'Without End Date',
      (WidgetTester tester) async {
        await initializeWidget(
          tester,
          WorkCard(
            child: child,
            startDate: startDate,
          ),
        );
        expect(find.byKey(const ValueKey('testing_container')), findsOneWidget);
        expect(find.byType(Card), findsOneWidget);
        expect(find.text('January 1992 - Present'), findsOneWidget);
      },
    );
    testWidgets(
      'With End Date',
      (WidgetTester tester) async {
        await initializeWidget(
          tester,
          WorkCard(
            child: child,
            startDate: startDate,
            endDate: endDate,
          ),
        );
        expect(find.byKey(const ValueKey('testing_container')), findsOneWidget);
        expect(find.byType(Card), findsOneWidget);
        expect(find.text('January 1992 - January 2022'), findsOneWidget);
      },
    );
  });
  group('Navigator Bar', () {
    testWidgets(
      'Full Test',
      (WidgetTester tester) async {
        await initializeWidget(
          tester,
          const NavigatorBar(),
        );
        expect(find.byType(SvgPicture), findsOneWidget);
        expect(find.text('About'), findsOneWidget);
        expect(find.text('Apps'), findsOneWidget);
      },
    );
  });
}
