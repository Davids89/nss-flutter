import 'package:flutter_test/flutter_test.dart';
import 'package:nosoloflutter/view_widget.dart';

void main() {
  testWidgets('View widget test', (WidgetTester tester) async {
    await tester.pumpWidget(View('Texto'));

    final textFinder = find.text('Texto');

    expect(textFinder, findsOneWidget);
  });
}
