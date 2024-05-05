void main() {
  void allType() {
    print('object');
  }
  // print(allType); // Fun Function

  int add(int number1, int number2) {
    return number1 + number2;
  }

  void greet(String name, [String? greeting]) {
    if (greeting != null) {
      print('$greeting, $name!');
    } else {
      print('Hello, $name!');
    }
  }

  print(add(3, 5));
  greet('Alice'); // Output: Hello, Alice!
  greet('Bob', 'Hi'); // Output: Hi, Bob!
}
