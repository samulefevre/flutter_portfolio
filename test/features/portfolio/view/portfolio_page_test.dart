import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/portfolio/portfolio.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('PortfolioPage', () {
    final keyPortfolioText = const Key('portfolio_text');

    testWidgets('should have key portfolio_text', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: PortfolioPage()));
      expect(find.byKey(keyPortfolioText), findsWidgets);
    });
  });
}
