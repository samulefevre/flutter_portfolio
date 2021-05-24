import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/portfolio/portfolio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PortfolioPage', () {
    final keyPortfolioText = const Key('portfolio_text');
    final keyWrapperContainer = const Key('wrapper_Container');

    testWidgets('should have key portfolio_text', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: PortfolioPage()));
      expect(find.byKey(keyPortfolioText), findsWidgets);
    });

    testWidgets('not mobile', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: PortfolioPage()));
      expect(find.byKey(keyWrapperContainer), findsWidgets);
    });

    testWidgets('mobile', (WidgetTester tester) async {
      tester.binding.window.physicalSizeTestValue = const Size(320, 596);
      tester.binding.window.devicePixelRatioTestValue = 1.0;

      await tester.pumpWidget(MaterialApp(home: PortfolioPage()));
      expect(find.byKey(keyWrapperContainer), findsWidgets);

      addTearDown(tester.binding.window.clearPhysicalSizeTestValue);
      addTearDown(tester.binding.window.clearDevicePixelRatioTestValue);
    });
  });
}
