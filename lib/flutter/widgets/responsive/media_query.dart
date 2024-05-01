import 'package:flutter/material.dart';

class MediaQuerySystem extends StatelessWidget {
  const MediaQuerySystem({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Center(
        child: Container(
          height: height * 0.5,
          width: width * 0.5,
          color: Colors.orange,
        ),
      ),
    );
  }
}
