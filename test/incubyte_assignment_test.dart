import 'package:incubyte_assignment/incubyte_assignment.dart';
import 'package:test/test.dart';

void main() {
  late StringCalculator calculator;

  setUp(() {
    calculator = StringCalculator();
  });

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
}
