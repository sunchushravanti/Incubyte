class StringCalculator {
  int addNumbers(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }
    String delimiter = ',';
    if (!numbers.contains(delimiter) &&
        numbers.isNotEmpty &&
        !numbers.contains('\n')) {
      return int.tryParse(numbers)!;
    }
    List<String> listOfNumbers = [];
    List<int> negatives = [];
    if (numbers.contains('\n')) {
      numbers = numbers.replaceAll('\n', delimiter);
    }

    listOfNumbers = numbers.split(delimiter);
    int sum = 0;
    for (int i = 0; i < listOfNumbers.length; i++) {
      if (int.tryParse(listOfNumbers[i])! < 0) {
        negatives.add(int.tryParse(listOfNumbers[i])!);
      }
      sum += int.tryParse(listOfNumbers[i])!;
    }
    if (negatives.isNotEmpty) {
      throw Exception('Negative numbers not allowed: ${negatives.join(', ')}');
    }

    return sum;
  }
}
