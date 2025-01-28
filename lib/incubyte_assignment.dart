class StringCalculator {
  int addNumbers(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    String delimiter = ',';
    if (!numbers.contains(delimiter) && numbers.isNotEmpty) {
      return int.tryParse(numbers)!;
    }

    List<String> listOfNumbers = numbers.split(delimiter);
    int sum = 0;
    for (int i = 0; i < listOfNumbers.length; i++) {
      sum += int.tryParse(listOfNumbers[i])!;
    }

    return sum;
  }
}
