// import 'package:flutter/material.dart';

// class HomeContainer extends StatelessWidget {
//   final String image;
//   final String text;
//   final Function() onTap;
//   const HomeContainer({
//     super.key,
//     required this.image,
//     required this.text,
//     required this.onTap,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Container(
//         height: 150,
//         width: 200,
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(10),
//         ),
//         child: Card(
//           child: Column(
//             children: [
//               Image.asset(
//                 image,
//                 height: 150,
//                 width: 200,
//               ),
//               Text(text)
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HomeContainer extends StatelessWidget {
  final String image;
  final String text;
  final Function() onTap;
  const HomeContainer({
    super.key,
    required this.image,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 170,
        height: 190,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 17, 35, 200),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          children: [
            Container(
              width: 170,
              height: 129,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(5),
                  bottomRight: Radius.circular(5),
                ),
                image: DecorationImage(
                  image: CachedNetworkImageProvider(image),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
