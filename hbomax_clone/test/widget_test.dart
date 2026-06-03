import 'package:flutter_test/flutter_test.dart';
import 'package:hbomax_clone/main.dart';

void main() {
  testWidgets('HBO Max smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const HboMaxApp());
  });
}
