import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/contact/contact.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ContactPage', () {
    final keyContactText = const Key('contact_text');
    final keyContactColumn = const Key('contact_Column');

    testWidgets('should have key portfolio_text', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ContactPage()));
      expect(find.byKey(keyContactText), findsOneWidget);
    });

    testWidgets('should have key contact_Column', (WidgetTester tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(320, 596);
      tester.binding.window.devicePixelRatioTestValue = 1.0;

      await tester.pumpWidget(MaterialApp(home: ContactPage()));
      expect(find.byKey(keyContactColumn), findsOneWidget);

      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);
    });
  });
}
