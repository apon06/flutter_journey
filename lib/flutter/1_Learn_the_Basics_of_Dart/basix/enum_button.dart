import 'package:flutter/material.dart';

enum ButtonColor {
  red,
  green,
  yellow,
  blue,
}

class CoutomButton extends StatelessWidget {
  final ButtonColor buttonColor;
  const CoutomButton({super.key, required this.buttonColor});

  getColor(ButtonColor color) {
    switch (color) {
      case ButtonColor.red:
        return Colors.red;
      case ButtonColor.yellow:
        return Colors.yellow;
      case ButtonColor.green:
        return Colors.green;
      case ButtonColor.blue:
        return Colors.blue;

      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      color: getColor(buttonColor),
    );
  }
}

class TestButton extends StatelessWidget {
  const TestButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CoutomButton(
          buttonColor: ButtonColor.blue,
        ),
      ),
    );
  }
}
