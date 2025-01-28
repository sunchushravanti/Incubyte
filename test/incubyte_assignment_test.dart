import 'package:incubyte_assignment/incubyte_assignment.dart';
import 'package:test/test.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

  group("String Calculator Method", () {
    test('Function should return 0 for an empty string', () {
      expect(calculator.addNumbers(""), 0);
    });

    test('Function should return the same number as input number provided', () {
      expect(calculator.addNumbers("1"), 1);
      expect(calculator.addNumbers("42"), 42);
    });

    test(
        'Function should return the sum of any amount number provided as input with comma seperator',
        () {
      expect(calculator.addNumbers("1,2"), 3);
      expect(calculator.addNumbers("4,2,5"), 11);
    });

    test(
        'Function should return the sum of any amount number provided as input with comma seperator',
        () {
      expect(calculator.addNumbers("1,2,3,4"), 10);
      expect(calculator.addNumbers("5,10,15"), 30);
    });

    test(
        'Function should return the sum of any amount number with handling newlines between numbers',
        () {
      expect(calculator.addNumbers("1\n2,3"), 6);
      expect(calculator.addNumbers("4,5\n6"), 15);
      expect(calculator.addNumbers("1\n1\n1"), 3);
    });

    test('Function should throw an exception for negative numbers', () {
      expect(
          () => calculator.addNumbers("1,-2,3"),
          throwsA(predicate((e) =>
              e is Exception &&
              e.toString() == 'Exception: Negative numbers not allowed: -2')));
    });

    test(
        'Function should return all negative numbers in the string with the exception message',
        () {
      expect(
          () => calculator.addNumbers("1,-2,3,-4"),
          throwsA(predicate((e) =>
              e is Exception &&
              e.toString() ==
                  'Exception: Negative numbers not allowed: -2, -4')));
    });

    test('Function should return sum of number with any custom delimeter', () {
      expect(calculator.addNumbers("//;\n1;2;3"), 6);
      expect(calculator.addNumbers("//|\n4|5|6"), 15);
    });
  });
}
