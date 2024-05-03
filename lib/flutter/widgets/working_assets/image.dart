import 'package:flutter/material.dart';

class ImageWidgets extends StatelessWidget {
  const ImageWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network('https://i.postimg.cc/LX2XdXmX/colab.png'),
            Image.asset(
              'assets/image/freepalestine.png',
              height: 100,
            ),
            // Image.file(File('G:/Downloads/mrbeast-image.webp')), // It is not support flutter web
            const ImageIcon(
                NetworkImage('https://i.postimg.cc/LX2XdXmX/colab.png')),
            const ImageIcon(AssetImage('assets/image/mrbeast.webp')),
            // NetworkImage('') // Show error because Network and AssetIamage it's suppor ImageProvider
          ],
        ),
      ),
    );
  }
}
