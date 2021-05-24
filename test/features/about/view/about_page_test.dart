import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/about/about.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AboutPage', () {
    final keyTitleAbout = const Key('about_Title');

    const textAbout1 = 'Je suis développeur freelance en télétravail '
        'et je développe des applications mobiles '
        'et sites web avec Flutter.';

    const textFlutter = 'Flutter est un framework développé par Google '
        'pour créer de belles applications compilées '
        'en mode natif pour mobile, web et bureau à '
        'partir d\'une base de code unique.';

    final keyWrapperContainer = const Key('wrapper_Container');

    testWidgets('should have key ${keyTitleAbout.toString()}',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.byKey(keyTitleAbout), findsOneWidget);
    });

    testWidgets('should have text $textAbout1', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.text(textAbout1), findsOneWidget);
    });

    testWidgets('should have richText with key textAbout2_richText',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.byKey(const Key('textAbout2_richText')), findsOneWidget);
    });

    testWidgets('should have text $textFlutter', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.text(textFlutter), findsOneWidget);
    });

    testWidgets('not mobile', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.byKey(keyWrapperContainer), findsWidgets);
    });

    testWidgets('mobile', (WidgetTester tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(320, 596);
      tester.binding.window.devicePixelRatioTestValue = 1.0;

      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.byKey(keyWrapperContainer), findsWidgets);

      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);
    });
  });
}
