import 'package:flutter/material.dart';

class QuestionOutlineContainer extends StatelessWidget {
  // final Function()? onClick;
  final String text;
  final Color color;
  const QuestionOutlineContainer({
    super.key,
    // this.onClick,
    required this.text,
    this.color = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 50,
        width: 350,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: color),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: Text(
            text,
            style: const TextStyle(
              fontSize: 25,
              color: Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
