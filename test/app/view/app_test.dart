import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_portfolio/app/view/app.dart';
import 'package:flutter_portfolio/features/home/home.dart';

void main() {
  group('App', () {
    testWidgets('renders HomePage', (tester) async {
      await tester.pumpWidget(const App());
      expect(find.byType(HomePage), findsOneWidget);
    });
  });
}
