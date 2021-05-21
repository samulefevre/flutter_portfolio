import 'package:flow_builder/flow_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/app/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('DrawerMobile', () {
    final keyDrawerMobile = const Key('drawer_mobile');
    final keyAboutListTile = const Key('about_ListTile');

    testWidgets('should have key drawer_mobile', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: DrawerMobile(activePage: AppPages.home),
        ),
      );
      expect(find.byKey(keyDrawerMobile), findsOneWidget);
    });

    testWidgets('should have key about_ListTile', (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: FlowBuilder(
            state: AppPages.home,
            onGeneratePages: (profile, pages) {
              return [
                const MaterialPage(
                  child: DrawerMobile(activePage: AppPages.home),
                ),
              ];
            },
          ),
        ),
      );
      expect(find.byKey(keyAboutListTile), findsOneWidget);
      var button = find.byKey(keyAboutListTile);
      await tester.tap(button);
      await tester.pumpAndSettle();
    });
  });
}
