import 'package:flutter_test/flutter_test.dart';
import 'package:simple_calculator_flutter/services/calculator_service.dart';

void main() {
  group('CalculatorService', () {
    final calculatorService = CalculatorService();

    test('Addition of two numbers', () {
      expect(calculatorService.add(2, 3), 5);
    });

    test('Subtraction of two numbers', () {
      expect(calculatorService.subtract(5, 3), 2);
    });

    test('Multiplication of two numbers', () {
      expect(calculatorService.multiply(2, 3), 6);
    });

    test('Division of two numbers', () {
      expect(calculatorService.divide(6, 3), 2);
    });

    test('Division by zero', () {
      expect(() => calculatorService.divide(6, 0), throwsA(isA<ArgumentError>()));
    });
  });
}