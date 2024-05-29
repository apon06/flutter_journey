import 'dart:async';
import 'package:flutter/material.dart';

class StreamFlutter2 extends StatelessWidget {
  const StreamFlutter2({super.key});

  @override
  Widget build(BuildContext context) {
    int counter = 0;
    StreamController<int> streamController = StreamController<int>();
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          counter++;
          streamController.sink.add(counter);
        },
        child: const Icon(Icons.add),
      ),
      body: SafeArea(
        child: Center(
          child: StreamBuilder(
            stream: streamController.stream,
            builder: (v, snapShot) {
              if (snapShot.hasData) {
                return Text(snapShot.data.toString());
              } else {
                return const Text('O');
              }
            },
          ),
        ),
      ),
    );
  }
}
