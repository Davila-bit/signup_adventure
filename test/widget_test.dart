import 'package:flutter_test/flutter_test.dart';

import 'package:signup_adventure/main.dart';

void main() {
  testWidgets('App loads welcome screen', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const SignupAdventureApp());

    // Wait for animations to complete
    await tester.pumpAndSettle();

    // Verify that the welcome screen loads with the start button
    expect(find.text('Start Adventure'), findsOneWidget);
  });
}
