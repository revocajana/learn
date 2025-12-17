import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:simple_calculator_flutter/app.dart';

void main() {
  testWidgets('App should display home screen', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    expect(find.text('Simple Calculator'), findsOneWidget);
    expect(find.byType(FloatingActionButton), findsOneWidget);
  });

  testWidgets('Calculator should perform addition', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Navigate to calculator screen
    await tester.tap(find.byIcon(Icons.calculate));
    await tester.pumpAndSettle();

    // Input numbers and perform addition
    await tester.tap(find.text('1'));
    await tester.tap(find.text('+'));
    await tester.tap(find.text('2'));
    await tester.tap(find.text('='));

    expect(find.text('3'), findsOneWidget);
  });

  testWidgets('BMI calculator should calculate BMI', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Navigate to BMI screen
    await tester.tap(find.byIcon(Icons.fitness_center));
    await tester.pumpAndSettle();

    // Input height and weight
    await tester.enterText(find.byKey(Key('heightField')), '180');
    await tester.enterText(find.byKey(Key('weightField')), '75');
    await tester.tap(find.byKey(Key('calculateBmiButton')));

    expect(find.textContaining('BMI:'), findsOneWidget);
  });

  testWidgets('Unit converter should convert units', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Navigate to unit converter screen
    await tester.tap(find.byIcon(Icons.swap_horiz));
    await tester.pumpAndSettle();

    // Input values for conversion
    await tester.enterText(find.byKey(Key('unitInputField')), '100');
    await tester.tap(find.byKey(Key('convertButton')));

    expect(find.textContaining('Converted Value:'), findsOneWidget);
  });

  testWidgets('GPA calculator should calculate GPA', (WidgetTester tester) async {
    await tester.pumpWidget(MyApp());

    // Navigate to GPA screen
    await tester.tap(find.byIcon(Icons.grade));
    await tester.pumpAndSettle();

    // Input grades
    await tester.enterText(find.byKey(Key('gradeField')), 'A');
    await tester.tap(find.byKey(Key('addGradeButton')));
    await tester.tap(find.byKey(Key('calculateGpaButton')));

    expect(find.textContaining('GPA:'), findsOneWidget);
  });
}