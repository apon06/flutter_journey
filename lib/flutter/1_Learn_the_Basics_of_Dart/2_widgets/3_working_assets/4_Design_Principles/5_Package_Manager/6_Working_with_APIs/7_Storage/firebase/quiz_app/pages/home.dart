import 'package:flutter/material.dart';
import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/7_Storage/firebase/quiz_app/widgets/home_container.dart';

import 'question.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Stream? quizStream ;
  // PageController pageController = PageController();

  // Widget allQuiz(){
  //   return StreamBuilder(stream: quizStream, builder: (context , snapShot){
  //       return snapShot.hasData ? PageView.builder(
  //         controller: pageController,
  //         itemCount: snapShot.data.docs.length,
  //         itemBuilder:(contexct , index){
  //           DocumentSnapshot ds = snapShot.data.d
  //         // return

  //       } ) : Container();
  //   });
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 4, 57, 101),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              const Text(
                'Let’s Strat',
                style: TextStyle(
                  color: Color(0xFF19CECE),
                  fontSize: 35,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeContainer(
                    image:
                        'https://i.postimg.cc/T3x7Zwgb/7366327892495633682.jpg',
                    text: 'Place',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (b) => const Question(categoryName: 'Place'),
                        ),
                      );
                    },
                  ),
                  HomeContainer(
                    image:
                        'https://i.postimg.cc/T3x7Zwgb/7366327892495633682.jpg',
                    text: 'Animals',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (b) =>
                              const Question(categoryName: 'Animal'),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeContainer(
                    image:
                        'https://i.postimg.cc/T3x7Zwgb/7366327892495633682.jpg',
                    text: 'Fruits',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (b) =>
                              const Question(categoryName: 'Fruits'),
                        ),
                      );
                    },
                  ),
                  HomeContainer(
                    image:
                        'https://i.postimg.cc/T3x7Zwgb/7366327892495633682.jpg',
                    text: 'Objects',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (b) =>
                              const Question(categoryName: 'Objects'),
                        ),
                      );
                    },
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  HomeContainer(
                    image:
                        'https://i.postimg.cc/T3x7Zwgb/7366327892495633682.jpg',
                    text: 'Sports',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (b) =>
                              const Question(categoryName: 'Sports'),
                        ),
                      );
                    },
                  ),
                  HomeContainer(
                    image:
                        'https://i.postimg.cc/T3x7Zwgb/7366327892495633682.jpg',
                    text: 'Random',
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (b) =>
                              const Question(categoryName: 'Random'),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}