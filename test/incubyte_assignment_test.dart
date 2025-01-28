import 'package:incubyte_assignment/incubyte_assignment.dart';
import 'package:test/test.dart';

void main() {
  int add(String numbers) {
    return 0; // Minimal implementation to start failing tests
  }

  test('Function should return 0 for an empty string', () {
    expect(add(""), 0);
  });
}
