import 'package:flutter_test/flutter_test.dart';
import 'package:store_app/main.dart';
import 'package:flutter/material.dart';

void main() {
  testWidgets('Login screen renders and navigates', (WidgetTester tester) async {
    // شغّل التطبيق
    await tester.pumpWidget(const StoreApp());

    // يتأكد أن شاشة تسجيل الدخول ظاهرة
    expect(find.text('Luxora Store'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);

    // يتأكد من توفر حقلي الإيميل والباسوورد
    expect(find.byType(TextField), findsNWidgets(2));
    expect(find.text('Email'), findsOneWidget);
    expect(find.text('Password'), findsOneWidget);

    // التنقل إلى صفحة إعادة تعيين كلمة المرور
    await tester.tap(find.text('Forgot Password?'));
    await tester.pumpAndSettle();
    expect(find.text('Reset Password'), findsOneWidget);

    // رجوع ثم الذهاب لصفحة إنشاء حساب
    // نستخدم Navigator.pop للرجوع إلى شاشة الدخول
    Navigator.of(tester.element(find.byType(Scaffold))).pop();
    await tester.pumpAndSettle();

    await tester.tap(find.text('Sign Up'));
    await tester.pumpAndSettle();
    expect(find.text('Create Account'), findsOneWidget);
  });
}
