import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:flutter_coffee/main.dart';

void main() {
  testWidgets('Order Coffee button tap test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the "Order Coffee" button is present.
    expect(find.widgetWithText(ElevatedButton, 'Order Coffee'), findsOneWidget);

    // Tap the "Order Coffee" button and trigger a frame.
    await tester.tap(find.widgetWithText(ElevatedButton, 'Order Coffee'));
    await tester.pumpAndSettle();

    // Verify that the "Select Product" screen is displayed.
    expect(find.text('Select Product'), findsOneWidget);
  });
}
