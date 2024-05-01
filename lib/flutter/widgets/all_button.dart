import 'package:flutter/material.dart';

class ButtonWidgets extends StatelessWidget {
  const ButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {}, child: const Text('ElevatedButton')),
            OutlinedButton(
                onPressed: () {}, child: const Text('OutlinedButton')),
            MaterialButton(
                onPressed: () {}, child: const Text('MaterialButton')),
            TextButton(onPressed: () {}, child: const Text('TextButton')),
            IconButton(onPressed: () {}, icon: const Icon(Icons.radio)),
            ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add')),
            OutlinedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add')),
            TextButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.add),
                label: const Text('Add')) , 
               
          ],
        ),
      ),
    );
  }
}
