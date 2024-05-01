import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 100, 
          width: 100,
          child: const Card(
            elevation: 10,
            // shape:  StarBorder(),
            shadowColor: Colors.blue,
            color: Colors.yellow,
          ),
        ),
      ),
    );
  }
}
