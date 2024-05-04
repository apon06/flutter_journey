import 'package:flutter/material.dart';

class HeroWidgets extends StatelessWidget {
  const HeroWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const HeroFull()),
            );
          },
          child: const Hero(
            tag: "DemoTag",
            child: Icon(
              Icons.add,
              size: 70.0,
            ),
          ),
        ),
      ),
    );
  }
}

class HeroFull extends StatelessWidget {
  const HeroFull({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Hero(
          tag: "DemoTag",
          child: Icon(
            Icons.add,
            size: 200.0,
          ),
        ),
      ),
    );
  }
}
