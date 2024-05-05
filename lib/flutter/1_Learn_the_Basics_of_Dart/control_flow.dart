void main() {
  var number = 3;
  var option = true;
  var char = 'b';
  if (number == 3) {
    print('Yes');
  } else {
    print('No');
  }   

  /// short control flow
  option == true ? print('Yes') : print('No');    

  /// [switch]
  switch (option) {
    case true:
      print('Yes');
    default:
      print('No');
  }

  // switch (char) {
  //   case 'a':
  //     print('A');
  //   case 'b':
  //     print('B');
  //   default:
  //     print('No');
  // }

    switch (char) { 
    case 'a':
      print('A');
    case 'b':
      print('B');
    default:
      print('No');
  }
}
