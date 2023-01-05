import 'package:flutter_test/flutter_test.dart';
import 'package:speed_test_app/my_app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());
  });
}
