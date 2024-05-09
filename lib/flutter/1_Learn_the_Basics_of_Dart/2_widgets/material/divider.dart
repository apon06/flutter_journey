import 'package:flutter/material.dart';

class DividerWidgets extends StatelessWidget {
  const DividerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Divider(
          color: Colors.yellow,
          thickness: 10,
          // height: 100,
          indent: 100,
          endIndent: 100,
          height: 100,
        ),
      ),
    );
  }
}
