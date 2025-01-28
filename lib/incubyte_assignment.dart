class StringCalculator {
  int addNumbers(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    String delimiter = ',';
    if (!numbers.contains(delimiter) && numbers.isNotEmpty) {
      return int.tryParse(numbers)!;
    }

    return int.tryParse(numbers)!;
  }
}
