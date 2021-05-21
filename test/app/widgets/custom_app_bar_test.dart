import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('CustomAppBar', () {
    final keyArticlesTextButton = const Key('articles_textButton');
    final keyMenuIconButton = const Key('menu_IconButton');
    testWidgets('should have bar when not mobile', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: FlowBuilder(
            state: AppPages.home,
            onGeneratePages: (profile, pages) {
              return [
                const MaterialPage(
                  child: Scaffold(
                    appBar: CustomAppBar(
                      activePage: AppPages.articles,
                      isMobile: false,
                    ),
                  ),
                ),
              ];
            },
          ),
        ),
      );
      var button = find.byKey(keyArticlesTextButton);
      expect(button, findsWidgets);
      await tester.tap(button);
      await tester.pumpAndSettle();
    });

    testWidgets('should have menu when mobile', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: FlowBuilder(
            state: AppPages.home,
            onGeneratePages: (profile, pages) {
              return [
                const MaterialPage(
                  child: Scaffold(
                    appBar: CustomAppBar(
                      activePage: AppPages.articles,
                      isMobile: true,
                    ),
                  ),
                ),
              ];
            },
          ),
        ),
      );
      var button = find.byKey(keyMenuIconButton);
      expect(button, findsWidgets);
      await tester.tap(button);
      await tester.pumpAndSettle();
    });
  });
}
