import 'package:flutter/material.dart';

class StackWidgets extends StatelessWidget {
  const StackWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 50,
              color: Colors.green,
            ),
            Container(
              height: 80,
              width: 40,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
