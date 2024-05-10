import 'package:flutter/material.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketTest extends StatefulWidget {
  final WebSocketChannel channel;
  const WebSocketTest({super.key, required this.channel});

  @override
  State<WebSocketTest> createState() => _WebSocketTestState();
}

final TextEditingController textEditingController = TextEditingController();

class _WebSocketTestState extends State<WebSocketTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Web'),
      ),
      body: Center(
        child: Column(
          children: [
            Form(
              child: TextFormField(
                controller: textEditingController,
              ),
            ),
            StreamBuilder(
                stream: widget.channel.stream,
                builder: (context, snapShot) {
                  return Text(snapShot.hasData ? '${snapShot.data}' : '');
                }),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (textEditingController.text.isNotEmpty) {
            widget.channel.sink.add(textEditingController.text);
          }
        },
        child: const Icon(Icons.send),
      ),
    );
  }

  @override
  void dispose() {
    widget.channel.sink.close();
    super.dispose();
  }
}
