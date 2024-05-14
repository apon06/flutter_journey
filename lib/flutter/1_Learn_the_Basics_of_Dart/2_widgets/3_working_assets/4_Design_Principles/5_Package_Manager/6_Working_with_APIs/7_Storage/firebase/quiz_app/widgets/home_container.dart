import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final String image;
  final String text;
  final Function()? onTap;
  const HomeContainer({
    super.key,
    required this.image,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 150,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Card(
          child: Column(
            children: [
              Image.asset(
                image,
                height: 150,
                width: 200,
              ),
              Text(text)
            ],
          ),
        ),
      ),
    );
  }
}
