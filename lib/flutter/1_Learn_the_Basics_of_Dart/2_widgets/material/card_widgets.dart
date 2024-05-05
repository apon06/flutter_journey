import 'package:flutter/material.dart';

class CardWidgets extends StatelessWidget {
  const CardWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: SizedBox(
          height: 100, 
          width: 100,
          child: Card(
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
