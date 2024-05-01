import 'package:flutter/cupertino.dart';
import 'flutter/widgets/responsive/media_query.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Learning',
      home: MediaQuerySystem(),
    );
  }
}

