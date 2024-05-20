import 'package:cached_network_image/cached_network_image.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/7_Storage/firebase/quiz_app/service/database.dart';
import '../widgets/quesion_button.dart';
import '../widgets/question_container.dart';

class Question extends StatefulWidget {
  final String categoryName;
  const Question({super.key, required this.categoryName});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  Stream? quizStream;
  bool show = false;
  PageController pageController = PageController();
  int quetionNumber = 1;
  getOtherLoad() async {
    quizStream = await DataBaseMethods().getCategoryQuiz(widget.categoryName);
    setState(() {});
  }

  @override
  void initState() {
    getOtherLoad();
    super.initState();
  }

  Widget allQuiz() {
    return StreamBuilder(
      stream: quizStream,
      builder: (context, snapShot) {
        return snapShot.hasData
            ? PageView.builder(
                physics: const NeverScrollableScrollPhysics(),
                controller: pageController,
                itemCount: snapShot.data.docs.length,
                itemBuilder: (contexct, index) {
                  DocumentSnapshot ds = snapShot.data.docs[index];
                  return Column(
                    children: [
                      Text(
                          '${quetionNumber.toString()}/ ${snapShot.data.docs.length.toString()}'),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 250,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.white),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: CachedNetworkImage(
                            fit: BoxFit.fill,
                            imageUrl: ds['Image'],
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            show = true;
                          });
                        },
                        child: show
                            ? QuestionOutlineContainer(
                                text: ds['option1'],
                                color: ds['correct'] == ds['option1']
                                    ? Colors.green
                                    : Colors.red,
                              )
                            : QuestionOutlineContainer(
                                text: ds['option1'],
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            show = true;
                          });
                        },
                        child: show
                            ? QuestionOutlineContainer(
                                text: ds['option2'],
                                color: ds['correct'] == ds['option2']
                                    ? Colors.green
                                    : Colors.red,
                              )
                            : QuestionOutlineContainer(
                                text: ds['option2'],
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            show = true;
                          });
                        },
                        child: show
                            ? QuestionOutlineContainer(
                                text: ds['option3'],
                                color: ds['correct'] == ds['option3']
                                    ? Colors.green
                                    : Colors.red,
                              )
                            : QuestionOutlineContainer(
                                text: ds['option3'],
                              ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            show = true;
                          });
                        },
                        child: show
                            ? QuestionOutlineContainer(
                                text: ds['option4'],
                                color: ds['correct'] == ds['option4']
                                    ? Colors.green
                                    : Colors.red,
                              )
                            : QuestionOutlineContainer(
                                text: ds['option4'],
                              ),
                      ),
                      snapShot.data.docs.length > quetionNumber
                          ? IconButton(
                              onPressed: () {
                                setState(
                                  () {
                                    show = false;
                                    quetionNumber++;
                                  },
                                );
                                pageController.nextPage(
                                  duration: const Duration(milliseconds: 200),
                                  curve: Curves.easeIn,
                                );
                              },
                              icon: const Icon(Icons.arrow_forward),
                            )
                          : const QuestionPageButton(),
                    ],
                  );
                },
              )
            : Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.categoryName),
        centerTitle: true,
      ),
      body: allQuiz(),
    );
  }
}
