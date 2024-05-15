// import 'dart:io';
// import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/7_Storage/firebase/quiz_app/service/database.dart';
import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/7_Storage/firebase/quiz_app/widgets/textfield.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:random_string/random_string.dart';

class AddQuiz extends StatefulWidget {
  const AddQuiz({super.key});

  @override
  State<AddQuiz> createState() => _AddQuizState();
}

class _AddQuizState extends State<AddQuiz> {
  final TextEditingController option1 = TextEditingController();
  final TextEditingController option2 = TextEditingController();
  final TextEditingController option3 = TextEditingController();
  final TextEditingController option4 = TextEditingController();
  final TextEditingController correctAns = TextEditingController();
  final TextEditingController imageControlar = TextEditingController();

  // final ImagePicker _picker = ImagePicker();
  // String? selectImage;
  String? value = 'Animal';
  // Future getImage() async {
  //   // var image = await _picker.pickImage(source: ImageSource.gallery);
  //   // var image = await ImagePicker().pickImage(source: ImageSource.gallery);
  //   setState(() {
  //     selectImage = imageControlar.text;
  //   });
  // }

  uploadItem() async {
    if (imageControlar.text != "" &&
        option1.text != "" &&
        option2.text != "" &&
        option3.text != "" &&
        option4.text != "" &&
        correctAns.text != "") {
      // String appId = randomAlphaNumeric(10);
      // Reference firebaseStoreRes =
      //     FirebaseStorage.instance.ref().child('blogImage').child(appId);
      // final UploadTask task = firebaseStoreRes.putFile(selectImage!);
      // var downloadUrl = await (await task).ref.getDownloadURL();
      Map<String, dynamic> addQuiz = {
        'Image': imageControlar.text,
        'option1': option1.text,
        'option2': option2.text,
        'option3': option3.text,
        'option4': option4.text,
        'correct': correctAns.text,
      };
      await DataBaseMethods().addQuizCategory(addQuiz, value!).then(
        (value) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Upload Complate'),
            ),
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Not Upload'),
        ),
      );
    }
  }

  final List<String> quizItems = [
    'Animal',
    'Sports',
    'Random',
    'Fruits',
    'Objects',
    'Place',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Quiz'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Upload Link'),
              // selectImage == null
              //     ? GestureDetector(
              //         onTap: () {
              //           getImage();
              //         },
              //         child: Container(
              //           height: 200,
              //           width: 200,
              //           decoration: BoxDecoration(
              //             border: Border.all(),
              //             borderRadius: BorderRadius.circular(15),
              //           ),
              //           child: const Center(
              //             child: Icon(Icons.upload),
              //           ),
              //         ),
              //       )
              //     : Image.file(
              //         selectImage!,
              //         height: 200,
              //         width: 200,
              //       ),
              TextFieldQuiz(
                text: 'Image Link',
                textEditingController: imageControlar,
              ),
              TextFieldQuiz(
                text: 'option 1',
                textEditingController: option1,
              ),
              TextFieldQuiz(
                text: 'option 2',
                textEditingController: option2,
              ),
              TextFieldQuiz(
                text: 'option 3',
                textEditingController: option3,
              ),
              TextFieldQuiz(
                text: 'option 3',
                textEditingController: option4,
              ),
              TextFieldQuiz(
                text: 'Correct Ans',
                textEditingController: correctAns,
              ),
              DropdownButtonHideUnderline(
                child: DropdownButton(
                  items: quizItems
                      .map(
                        (item) => DropdownMenuItem(
                          value: item,
                          child: Text(item),
                        ),
                      )
                      .toList(),
                  onChanged: (value) => setState(() {
                    this.value = value;
                  }),
                ),
              ),
              Text(value.toString()),
              ElevatedButton(
                onPressed: () {
                  uploadItem();
                },
                child: const Text('Upload or Add'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
