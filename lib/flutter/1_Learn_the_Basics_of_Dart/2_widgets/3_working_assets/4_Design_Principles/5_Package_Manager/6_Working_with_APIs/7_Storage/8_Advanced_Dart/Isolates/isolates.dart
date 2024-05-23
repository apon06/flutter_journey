import 'package:flutter/material.dart';

class FlutterIsolates extends StatefulWidget {
  const FlutterIsolates({super.key});

  @override
  State<FlutterIsolates> createState() => FlutterIsolatesState();
}

class FlutterIsolatesState extends State<FlutterIsolates> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.asset('assets/gifs/200.webp'),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {
              var total = totalEX();
              debugPrint('Result $total');
            }, child: const Text('From 1')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('From 2')),
            const SizedBox(height: 10),
            ElevatedButton(onPressed: () {}, child: const Text('From 3')),
          ],
        ),
      ),
    );
  }
}

totalEX() {
  var total = 0;
  for (int i = 0; i <= 1000900000000; i++) {
    total += total;
    debugPrint('Result $total');
  }
  return total;
}
