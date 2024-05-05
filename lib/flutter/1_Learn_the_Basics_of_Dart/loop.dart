void main() {
  //// for loop
  for (var i = 1; i <= 100; i++) {
    print('$i : Hi I Love Flutter');
  }

  //// for in loop
  var listData = ['4343'];

  /// Only Support List Data for in loop
  for (var element in listData) {
    print(element);
  }

  List numbers = ['4343', 1, 2, 3, 4, 7];
  // Using a for loop
  for (int i = 0; i < numbers.length; i++) {
    print(numbers[i]);
  }

  //// while loop
  int i = 1;
  while (i <= 10) {
    print(i);
    i++;
  }
}
