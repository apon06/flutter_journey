import 'package:flutter/material.dart';
import '../widgets/question_container.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animals'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width * 1,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.white),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Image.asset(
                  'assets/image/mrbeast.webp',
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const QuestionOutlineContainer(text: 'mrBeast'),
            const QuestionOutlineContainer(text: 'mrBeen'),
            const QuestionOutlineContainer(text: 'mrIndia'),
            const QuestionOutlineContainer(text: 'mrApon'),
          ],
        ),
      ),
    );
  }
}
