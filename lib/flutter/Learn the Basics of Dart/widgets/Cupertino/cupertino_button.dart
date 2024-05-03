import 'package:flutter/cupertino.dart';

class CupertinoButtonWidgets extends StatelessWidget {
  const CupertinoButtonWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: CupertinoButton(
          child: const Text('CupertinoButton'), onPressed: () {}),
    );
  }
}
