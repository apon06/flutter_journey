// void main() {
//   int? number;
//   Future<dynamic> pro(value) async {
//     number = await value;
//   }

//   print(pro(20)); // It is Not Good Pactrices you use the http call time. i am alraedy learn this subject but i write again
// }

void main() async {
  print('Number1');
  await display();
  print('Number3');
}

Future<void> display() async {
  Future.delayed(const Duration(seconds: 5), () => print('Number2'));
}
