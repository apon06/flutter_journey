import 'package:flutter/material.dart';

class FontsSystem extends StatelessWidget {
  const FontsSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Hi This Fonts',
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            fontFamily: 'Inspiration',
          ),
        ),
      ),
    );
  }
}
