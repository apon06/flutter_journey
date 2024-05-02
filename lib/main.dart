import 'package:flutter/material.dart';
import 'flutter/widgets/inherited/inherited_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MyInheritedWidgets(
      age: 17,
      child: MaterialApp(
        title: 'Flutter Learning',
        home: DataShowScreen(),
      ),
    );
  }
}
