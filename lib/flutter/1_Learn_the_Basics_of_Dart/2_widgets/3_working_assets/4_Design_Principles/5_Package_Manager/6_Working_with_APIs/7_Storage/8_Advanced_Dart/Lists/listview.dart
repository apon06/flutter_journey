import 'package:flutter/material.dart';

class FlutterList extends StatelessWidget {
  const FlutterList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        // scrollDirection: Axis.horizontal,
        reverse: true,
        children: [
          ElevatedButton(onPressed: () {}, child: const Text('Button')),
          TextButton(onPressed: () {}, child: const Text('Button')),
          MaterialButton(onPressed: () {}, child: const Text('Button')),
          OutlinedButton(onPressed: () {}, child: const Text('Button'))
          
        ],
      ),
    );
  }
}
