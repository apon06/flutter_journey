enum AppColors { red, blue, yellow, green }

// ignore: constant_identifier_names
enum Weekday { Monday, Tuesday, Wednesday, Thursday, Friday }

void main() {
  AppColors baseColors = AppColors.yellow;

  if (baseColors == AppColors.blue) {
    print('Yes');
  } else {
    print('No');
  }
  print(baseColors.index); // 2
  

  Weekday today = Weekday.Friday;

  ///split make this arrey and value.remove.value and last function selected last value the code
  print("Today is ${today.toString().split('.').last}");

  /// make arrey ebery value.Output : [W, e, e, k, d, a, y, ., F, r, i, d, a, y]
  print(today.toString().split(''));
}
