import 'package:flutter/material.dart';
import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/web%20sockets/web_sockets.dart';
import 'package:web_socket_channel/io.dart';
import 'flutter/1_Learn_the_Basics_of_Dart/2_widgets/inherited/inherited_widgets.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MyInheritedWidgets(
      age: 18,
      child: MaterialApp(
        title: 'Flutter Learning',
        home: WebSocketTest(
          channel: IOWebSocketChannel.connect('ws://echo.websocket.org'),
        ),
      ),
    );
  }
}
