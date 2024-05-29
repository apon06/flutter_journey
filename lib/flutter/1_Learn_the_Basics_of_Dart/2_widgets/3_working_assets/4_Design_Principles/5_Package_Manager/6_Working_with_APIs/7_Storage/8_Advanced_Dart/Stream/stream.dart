import 'dart:async';
import 'package:flutter/material.dart';

class StreamFlutter extends StatelessWidget {
  const StreamFlutter({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController textEditingController = TextEditingController();
    List language = [];
    StreamController streamController = StreamController();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Language'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5),
        child: Column(
          children: [
            TextFormField(
              controller: textEditingController,
            ),
            SizedBox(
              width: 150,
              child: ElevatedButton(
                onPressed: () {
                  final input = textEditingController.text;
                  language.add(input);
                  streamController.sink.add(language);
                  textEditingController.clear();
                },
                child: const Text('New Lenguage'),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                child: StreamBuilder(
                  stream: streamController.stream,
                  builder: (context, snapShot) {
                    if (snapShot.hasData) {
                      return ListView.builder(
                          itemCount: snapShot.data.length,
                          itemBuilder: (c, index) {
                            return Card(
                              child: ListTile(
                                title: Text(
                                  snapShot.data[index],
                                ),
                              ),
                            );
                          });
                    } else {
                      return const Text('null');
                    }
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
