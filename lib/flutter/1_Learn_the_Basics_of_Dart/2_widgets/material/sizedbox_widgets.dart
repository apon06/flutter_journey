import 'package:flutter/material.dart';

class SizedBoxWidgets extends StatelessWidget {
  const SizedBoxWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 30,
            width: 20,
          ),
          Text('Hello'),
        ],
      ),
    );
  }
}
