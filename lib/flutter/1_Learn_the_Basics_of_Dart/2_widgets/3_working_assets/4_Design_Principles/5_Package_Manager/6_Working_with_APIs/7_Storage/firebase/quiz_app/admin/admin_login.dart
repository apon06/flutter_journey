import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/7_Storage/firebase/quiz_app/widgets/textfield.dart';
import 'add_quiz.dart';

class AdminLogin extends StatefulWidget {
  const AdminLogin({super.key});

  @override
  State<AdminLogin> createState() => _AdminLoginState();
}

class _AdminLoginState extends State<AdminLogin> {
  final TextEditingController userName = TextEditingController();
  final TextEditingController userPassword = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 10),
            TextFieldQuiz(text: 'userName', textEditingController: userName),
            TextFieldQuiz(
                text: 'Password', textEditingController: userPassword),
            ElevatedButton(
              onPressed: () {
                LoginAdmin();
              },
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  LoginAdmin() {
    try {
      FirebaseFirestore.instance.collection('Admin').get().then(
        (snapShot) {
          snapShot.docs.forEach(
            (result) {
              if (result.data()['id'] != userName.text.trim()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Wrong.. UserName try again'),
                  ),
                );
              } else if (result.data()['password'] !=
                  userPassword.text.trim()) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Wrong..Password try again'),
                  ),
                );
              } else {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (b) => const AddQuiz(),
                  ),
                );
              }
            },
          );
        },
      );
    } catch (e) {
      print(e);
    }
  }
}
