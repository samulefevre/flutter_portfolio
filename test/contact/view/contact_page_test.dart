import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/contact/contact.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactPage', () {
    final keyContactText = const Key('contact_text');

    testWidgets('should have key portfolio_text', (WidgetTester tester) async {
      await tester.pumpWidget(const MaterialApp(home: ContactPage()));
      expect(find.byKey(keyContactText), findsOneWidget);
    });
  });
}
