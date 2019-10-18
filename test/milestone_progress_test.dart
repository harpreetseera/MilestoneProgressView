import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../example/lib/main.dart';

void main() {
  group('Widget Smoke test', () {
    testWidgets('Increment Button Test', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      expect(find.byTooltip('Increment'), findsOneWidget);
      expect(find.byTooltip('decrement'), findsOneWidget);

      // Ensuring counter starts at 0
      expect(find.text('0 milestone completed'), findsOneWidget);

      // Incrementing counter by +1
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // To ensure counter incremented by +1
      expect(find.text('1 milestone completed'), findsOneWidget);
    });

    testWidgets('Decrement Button Test', (WidgetTester tester) async {
      await tester.pumpWidget(MyApp());

      expect(find.byTooltip('Increment'), findsOneWidget);
      expect(find.byTooltip('decrement'), findsOneWidget);

      // Ensuring counter starts at 0
      expect(find.text('0 milestone completed'), findsOneWidget);

      // Incrementing counter by +1 to test decrement
      await tester.tap(find.byIcon(Icons.add));
      await tester.pumpAndSettle();

      // To ensure counter incremented by +1
      expect(find.text('1 milestone completed'), findsOneWidget);

      // Decrementing counter by -1
      await tester.tap(find.byIcon(Icons.remove));
      await tester.pumpAndSettle();

      // To ensure counter decremented by -1
      expect(find.text('0 milestone completed'), findsOneWidget);
    });
  });
}
