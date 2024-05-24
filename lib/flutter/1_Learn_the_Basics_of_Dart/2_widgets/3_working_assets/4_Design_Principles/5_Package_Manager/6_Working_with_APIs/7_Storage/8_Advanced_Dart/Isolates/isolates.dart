import 'dart:isolate';

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
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CircularProgressIndicator(),
            ElevatedButton(
              onPressed: () {
                heavyLoad(1000000000);
              },
              child: const Text('Click 1'),
            ),
            ElevatedButton(
              onPressed: () {
                isolatesFun();
              },
              child: const Text('Click 2'),
            ),
          ],
        ),
      ),
    );
  }
}

int heavyLoad(int iteration) {
  int value = 1;
  for (var i = 0; i <= iteration; i++) value++;
  print(value);
  return value;
}

isolatesFun() async {
  final ReceivePort receivePort = ReceivePort();
  try {
    await Isolate.spawn(runTask, [receivePort.sendPort, 1000000000]);
  } catch (e) {
    receivePort.close();
  }
  final res = receivePort.first;
  print('value $res');
}

runTask(List<dynamic> args) {
  SendPort resultport = args[0];
  int value = 1;
  for (var i = 0; i <= args[1]; i++) value++;
  Isolate.exit(resultport, value);
}
