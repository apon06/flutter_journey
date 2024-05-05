import 'package:flutter/material.dart';

/// MyInheritedWidgets extends [InheritedWidget]
class MyInheritedWidgets extends InheritedWidget {
  final int age;
  const MyInheritedWidgets(
      {super.key, required this.age, required Widget child})
      : super(child: child);

/// The [InheritedWidget] required updateShouldNotify function
  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    throw true;
  }

/// And [MyInheritedWidgets] make static because if not use the age not show variuble 
  static MyInheritedWidgets of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<MyInheritedWidgets>()!;
  }
}

class DataShowScreen extends StatelessWidget {
  const DataShowScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final ageData = MyInheritedWidgets.of(context).age;
    return Scaffold(
      body: Center(
        child: Text('$ageData'),
      ),
    );
  }
}
