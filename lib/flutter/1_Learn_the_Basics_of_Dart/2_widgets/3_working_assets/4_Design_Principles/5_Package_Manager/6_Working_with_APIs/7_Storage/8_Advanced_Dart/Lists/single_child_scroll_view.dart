import 'package:flutter/material.dart';

class FlutterSingleChildScrollView extends StatelessWidget {
  const FlutterSingleChildScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          // scrollDirection: Axis.horizontal,

          children: [
            ElevatedButton(onPressed: () {}, child: const Text('Button')),
            TextButton(onPressed: () {}, child: const Text('Button')),
            MaterialButton(onPressed: () {}, child: const Text('Button')),
            OutlinedButton(onPressed: () {}, child: const Text('Button'))
          ],
        ),
      ),
    );
  }
}
