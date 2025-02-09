import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_ci_cd_app/main.dart';  // Ensure this path is correct.

void main() {
  testWidgets('CI/CD greeting test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that the greeting text is displayed.
    expect(find.text('Hello, CI/CD!'), findsOneWidget);
  });
}
