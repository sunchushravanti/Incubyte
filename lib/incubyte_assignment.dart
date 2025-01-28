class StringCalculator {
  int addNumbers(String numbers) {
    if (numbers.isEmpty) {
      return 0;
    }

    String delimiter = ',';
    List<String> listOfNumbers = [];
    List<int> negatives = [];
    int sum = 0;
    // if (!numbers.contains(delimiter) &&
    //     numbers.isNotEmpty &&
    //     !numbers.contains('\n')) {
    //   return int.tryParse(numbers)!;
    // }

    if (numbers.startsWith('//')) {
      int delimiterIndex = numbers.indexOf('\n');
      delimiter = numbers.substring(2, delimiterIndex);
      numbers = numbers.substring(delimiterIndex + 1);
    }

    if (numbers.contains('\n')) {
      numbers = numbers.replaceAll('\n', delimiter);
    }

    listOfNumbers = numbers.split(delimiter);

    for (String num in listOfNumbers) {
      if (int.tryParse(num)! < 0) {
        negatives.add(int.tryParse(num)!);
      }
      sum += int.tryParse(num)!;
    }
    if (negatives.isNotEmpty) {
      throw Exception('Negative numbers not allowed: ${negatives.join(', ')}');
    }

    return sum;
  }
}
