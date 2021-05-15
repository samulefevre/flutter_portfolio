import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/home/home.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomePage', () {
    const textHello = 'Bonjour,';
    const textName = 'Samuel LEFEVRE';
    const textJob = 'Développeur web et mobile';
    const textMalt = 'Engagez moi sur Malt.fr !';

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

    testWidgets('should have OutlinedButton', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      expect(find.byType(OutlinedButton), findsOneWidget);
    });

    testWidgets('should have text $textMalt', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      expect(find.text(textMalt), findsOneWidget);
    });

    testWidgets('should have SocialIcons widget', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: HomePage()));
      expect(find.byType(SocialIcons), findsOneWidget);
    });
  });
}
