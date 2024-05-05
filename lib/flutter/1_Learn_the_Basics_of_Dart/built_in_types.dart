void main() {
  var x = 1.0;
  print(x); // 1
  var hex = 0xDEADBEEF; //0x important
  print(hex); // 3735928559
  var exponents = 1.42e+54; // e important
  print(exponents); // 1.42e+54
  var exponents1 = 1.42e+5445434; // e important ///! the length many
  print(exponents1); // Infinity
  x += 2.5;
  print(x); // 3.5
  print(int.parse('1')); // 1
  print(int.parse('1.1')); // error
  print(int.parse('abc')); // error
  print(double.parse('1.1')); // 1.1
  print(double.parse('1')); // 1
  /// [Record]
  var record = ('first', a: 2, b: true, 'last');
  print(record);
  (String, int) valu;
  valu = ('Apon', 7);
  print(valu = ('ali', 8)); // (ali , 8)
  print(valu); // (ali , 8)
  ({int a, int b}) hi;
  print(hi = (a: 2, b: 23));
  ({int a, int b}) recordAB = (a: 1, b: 2);
  print(recordAB);
  (int x, int y, int z) point = (1, 2, 3);
  (int r, int g, int b) color = (1, 2, 3);
  print(point == color); //  true

  // [List]

  var list = ['Car', 'Boat', 'Plane'];
  print(list);
  list[2] == 'Plane' ;
  list.add('Dog');
  list.remove('Cat');
  list.length == 3;
}
