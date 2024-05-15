import 'package:flutter/material.dart';

class TextFieldQuiz extends StatelessWidget {
  final TextEditingController? textEditingController;
  final String text;
  const TextFieldQuiz(
      {super.key, this.textEditingController, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 60,
        width: 300,
        decoration: BoxDecoration(
            border: Border.all(), borderRadius: BorderRadius.circular(15)),
        child: TextField(
          controller: textEditingController,
          decoration: InputDecoration(
            hintText: text,
            border: InputBorder.none,
          ),
        ),
      ),
    );
  }
}
