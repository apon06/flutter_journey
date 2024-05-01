import 'package:flutter/material.dart';

class ContainerWidgets extends StatelessWidget {
  const ContainerWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.bottomRight,
        constraints: const BoxConstraints(maxWidth: 500 , maxHeight: 500), 
        transform: Matrix4.skew(3, 3),
        decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          // shape: BoxShape.circle ,
          color: Colors.orange,
          image: const DecorationImage(
            image: NetworkImage(
              'https://i.postimg.cc/t4GGvcqR/discord-min.png',
            ),
          ),
          gradient: const LinearGradient(
            colors: [
              Colors.green,
              Colors.red,
            ],
          ),
        ),
      ),
    );
  }
}
