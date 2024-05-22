void main() {
  var myName = (String name) {
    print('Name = $name');
  };

  Function myRoll = (int roll) {
    print('Roll = $roll');
  };
  var cube = (int cube) {
    return cube * cube * cube;
  };
  myName('Apon');
  myRoll(105);
  print(cube(3)); 
}
