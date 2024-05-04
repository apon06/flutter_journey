void main(List<String> args) {
  var number1 = 100;
  var number2 = 300;

// the try catch only handle output error not any syntax
  try {
    if (number1 == number2) {
      print('Yes');
    } else {
      print('No');
    }
  } catch (e) {
    print('Error');
  }
  // finally {}
  // throw {};
}
