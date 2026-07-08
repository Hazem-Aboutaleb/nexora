import 'package:flutter_test/flutter_test.dart';

import 'package:desktop/app/app.dart';

void main() {
  testWidgets('Nexora app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const NexoraApp());

    expect(find.text('Nexora'), findsWidgets);
  });
}
