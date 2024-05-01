import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoButtonWidgets  extends StatelessWidget {
  const CupertinoButtonWidgets ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CupertinoButton(child: const Text('CupertinoButton'), onPressed: (){}),
    );
  }
}