import 'package:flutter/material.dart';
import 'package:flutter_portfolio/features/about/about.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('AboutPage', () {
    final titleAbout = 'A propos'.toUpperCase();

    const textAbout1 = 'Je suis développeur freelance en télétravail '
        'et je développe des applications mobiles '
        'et sites web avec Flutter.';

    /* const textAbout2 = 'Vous pouvez me retrouver sur la plateforme Malt.fr '
        'si vous avez besoin de mes services.'; */

    const textFlutter = 'Flutter est un framework développé par Google '
        'pour créer de belles applications compilées '
        'en mode natif pour mobile, web et bureau à '
        'partir d\'une base de code unique.';

    testWidgets('should have 2 title $titleAbout', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.text(titleAbout), findsNWidgets(2));
    });

    testWidgets('should have text $textAbout1', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.text(textAbout1), findsOneWidget);
    });

    testWidgets('should have richText with key textAbout2_richText',
        (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.byKey(const Key('textAbout2_richText')), findsOneWidget);
    });

    testWidgets('should have text $textFlutter', (WidgetTester tester) async {
      await tester.pumpWidget(MaterialApp(home: AboutPage()));
      expect(find.text(textFlutter), findsOneWidget);
    });
  });
}
