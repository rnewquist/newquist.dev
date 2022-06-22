import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:mockito/mockito.dart';
import 'package:newquist_dev/app_provider.dart';
import 'package:newquist_dev/sections/about_section.dart';
import 'package:newquist_dev/sections/bottom_tablet.dart';
import 'package:newquist_dev/sections/product_section.dart';
import 'package:newquist_dev/ui/app_card.dart';
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
          home: Scaffold(
            body: Builder(
              builder: (BuildContext context) {
                setContext(context);
                return SingleChildScrollView(child: child);
              },
            ),
          ),
        ),
      ),
    );
    await tester.pumpAndSettle();
  }

  testWidgets('About Section', (WidgetTester tester) async {
    await initializeWidget(tester, const AboutSection());
    expect(find.text('ABOUT ME'), findsOneWidget);
    expect(find.text('WORK HISTORY'), findsOneWidget);
    expect(find.byType(WorkCard), findsNWidgets(4));
    expect(find.byKey(const ValueKey('profile_image')), findsOneWidget);
    expect(find.byKey(const ValueKey('About_section_info')), findsOneWidget);
    expect(find.byKey(const ValueKey('ge_work_card')), findsOneWidget);
    expect(find.byKey(const ValueKey('cbs_work_card')), findsOneWidget);
    expect(find.byKey(const ValueKey('vitronic_work_card')), findsOneWidget);
    expect(find.byKey(const ValueKey('hh_work_card')), findsOneWidget);
  });

  testWidgets('Product Section', (WidgetTester tester) async {
    await initializeWidget(tester, const ProductSection());
    expect(find.text('PERSONAL APPLICATIONS'), findsOneWidget);
    expect(find.text('WORK APPLICATIONS'), findsOneWidget);
    expect(find.byType(AppCard), findsNWidgets(7));
    expect(find.text('Distilled'), findsOneWidget);
    expect(find.text('CNET'), findsOneWidget);
    expect(find.text('TVGUIDE'), findsOneWidget);
    expect(find.text('SmartHQ'), findsOneWidget);
    expect(find.text('Kitchen Hub'), findsOneWidget);
    expect(find.text('Launderday'), findsOneWidget);
    expect(find.text('Flavorly'), findsOneWidget);
  });

  testWidgets('Bottom Section', (WidgetTester tester) async {
    await initializeWidget(tester, const BottomTableSection());
    expect(find.byType(SvgPicture), findsOneWidget);
    expect(find.byKey(const ValueKey('github_link')), findsOneWidget);
    expect(find.byKey(const ValueKey('linkedin_link')), findsOneWidget);
    expect(find.byKey(const ValueKey('instagram_link')), findsOneWidget);
    expect(find.text('Privacy Policy'), findsOneWidget);
    expect(find.text('To The Top'), findsOneWidget);
    await tester.tap(find.byKey(const ValueKey('github_link')));
    await tester.pump();
    verify(appProviderMock.onURLPress('https://github.com/rnewquist'))
        .called(1);
    await tester.tap(find.byKey(const ValueKey('linkedin_link')));
    await tester.pump();
    verify(appProviderMock.onURLPress('https://www.linkedin.com/in/rnewquist/'))
        .called(1);
    await tester.tap(find.byKey(const ValueKey('instagram_link')));
    await tester.pump();
    verify(appProviderMock
            .onURLPress('https://www.instagram.com/newquistryanmichael/'))
        .called(1);
  });
}
