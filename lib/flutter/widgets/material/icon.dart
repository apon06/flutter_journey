import 'package:flutter/material.dart';

class IconWidgets extends StatelessWidget {
  const IconWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Icon(Icons.add, size: 50, color: Colors.red)),
    );
  }
}
