import 'package:flutter/material.dart';

class TextWidgets extends StatelessWidget {
  const TextWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Text Hello',
          textAlign: TextAlign.start,
          overflow: TextOverflow.fade,
          maxLines: 1,
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
            fontWeight: FontWeight.bold,
            letterSpacing: 2,
            wordSpacing: 4,
            shadows: [
              Shadow(
                color: Colors.blue,
                blurRadius: 1,
                offset: Offset(5, 5),
              ),
            ],

            /// many more
          ),
        ),
      ),
    );
  }
}
