// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:chap_5_gen_q_1_3_refactoring_complex_widget_trees/main.dart';
void main() {
  testWidgets('Refactoring Complex Widget Trees', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: ProfileScreen()));
 
    // Verify the presence of smaller components
    expect(find.byType(ProfileImage), findsOneWidget);
    expect(find.byType(ProfileDetails), findsOneWidget);
    expect(find.byType(ProfileActions), findsOneWidget);
 
    // Additional tests can be added to verify the functionality of each smaller component.
  });
}
