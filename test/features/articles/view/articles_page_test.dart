import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/articles/articles.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('ArticlesPage', () {
    final titleArticles = 'Articles'.toUpperCase();

    const textArticles1 = 'Coming soon ...';

    testWidgets('should have 2 title $titleArticles',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ArticlesPage()));
      expect(find.text(titleArticles), findsNWidgets(2));
    });

    testWidgets('should have text $textArticles1', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: ArticlesPage()));
      expect(find.text(textArticles1), findsOneWidget);
    });
  });
}
