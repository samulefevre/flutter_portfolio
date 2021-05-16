import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/routes/routes.dart';
import 'package:flutter_portfolio/features/about/about.dart';
import 'package:flutter_portfolio/features/home/home.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomePage', () {
    const textHello = 'Bonjour,';
    const textName = 'Samuel LEFEVRE';
    const textJob = 'Développeur web et mobile';
    const textMalt = 'Engagez moi sur Malt.fr !';

    const keyMaltTextButton = Key('malt_textButton');

    testWidgets('should have text $textHello', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      expect(find.text(textHello), findsOneWidget);
    });

    testWidgets('should have text $textName', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      expect(find.text(textName), findsOneWidget);
    });

    testWidgets('should have text $textJob', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      expect(find.text(textJob), findsOneWidget);
    });

    testWidgets('should go to about page when about_OutlinedButton taped',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: FlowBuilder<AppPages>(
            state: AppPages.home,
            onGeneratePages: onGenerateAppViewPages,
          ),
        ),
      );
      var button = find.byKey(const Key('about_OutlinedButton'));
      expect(button, findsOneWidget);
      await tester.tap(button);
      await tester.pumpAndSettle();
      expect(find.byType(AboutPage), findsOneWidget);
    });

    testWidgets('should have text $textMalt', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      expect(find.text(textMalt), findsOneWidget);
    });

    testWidgets('click on malt_textButton should go to maltPage',
        (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      var button = find.byKey(keyMaltTextButton);
      expect(button, findsOneWidget);
      await tester.tap(button);
      await tester.pumpAndSettle();
      // expect(await launch(kUrlMalt), isTrue);
    });

    testWidgets('should have SocialIcons widget', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      expect(find.byType(SocialIcons), findsOneWidget);
    });
  });
}
