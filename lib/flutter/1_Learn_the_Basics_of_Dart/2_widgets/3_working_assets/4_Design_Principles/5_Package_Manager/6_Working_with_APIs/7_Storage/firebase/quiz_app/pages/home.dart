import 'package:flutter/material.dart';
import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/7_Storage/firebase/quiz_app/widgets/home_container.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
        crossAxisCount: 2,
        children: const [
          HomeContainer(image: 'assets/image/mrbeast.webp', text: 'Place'),
          HomeContainer(image: 'assets/image/mrbeast.webp', text: 'Animals'),
          HomeContainer(image: 'assets/image/mrbeast.webp', text: 'Fruits'),
          HomeContainer(image: 'assets/image/mrbeast.webp', text: 'Objects'),
          HomeContainer(image: 'assets/image/mrbeast.webp', text: 'Sprots'),
          HomeContainer(image: 'assets/image/mrbeast.webp', text: 'Random'),
        ],
      ),
    );
  }
}
