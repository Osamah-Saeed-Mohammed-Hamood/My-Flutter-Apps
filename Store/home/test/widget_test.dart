import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:home/main.dart';

void main() {
  testWidgets('Home screen loads with title and categories',
      (WidgetTester tester) async {
    // ابني التطبيق
    await tester.pumpWidget(const MyApp());

    // تحقق من وجود عنوان المتجر
    expect(find.text('Luxora Store'), findsOneWidget);

    // تحقق من وجود قسم Groceries
    expect(find.text('Groceries'), findsOneWidget);

    // تحقق من وجود الأيقونة الخاصة بالمتجر (storefront)
    expect(find.byIcon(Icons.local_grocery_store), findsOneWidget);
  });
}
