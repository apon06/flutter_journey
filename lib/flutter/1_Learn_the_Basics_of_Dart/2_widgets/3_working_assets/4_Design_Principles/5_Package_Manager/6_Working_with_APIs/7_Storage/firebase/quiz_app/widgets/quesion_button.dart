import 'package:flutter/material.dart';

class QuestionPageButton extends StatelessWidget {
  const QuestionPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.green,
      ),
      child: const Center(
        child: Text(
          'Result',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
