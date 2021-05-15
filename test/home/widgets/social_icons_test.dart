import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/home/home.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SocialIcons', () {
    testWidgets('should have IconButton', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SocialIcons(),
          ),
        ),
      );
      expect(find.byType(IconButton), findsWidgets);
    });

    testWidgets('should have 3 IconButton', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: SocialIcons(),
          ),
        ),
      );
      expect(find.byType(IconButton), findsNWidgets(3));
    });
  });
}
