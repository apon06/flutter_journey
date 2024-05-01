import 'package:flutter/cupertino.dart';
import 'flutter/widgets/Cupertino/cupertinoAction_sheet_action_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      title: 'Flutter Learning',
      home: CupertinoActionSheetActionWidgets(),
    );
  }
}

