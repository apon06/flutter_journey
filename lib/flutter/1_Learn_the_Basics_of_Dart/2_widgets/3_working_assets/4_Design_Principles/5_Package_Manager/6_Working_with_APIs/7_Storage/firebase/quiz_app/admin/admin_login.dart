import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
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
            TextField(
              controller: userName,
              decoration: const InputDecoration(
                hintText: 'userName',
                border: InputBorder.none,
              ),
            ),
            TextField(
              controller: userPassword,
              decoration: const InputDecoration(
                hintText: 'Password',
                border: InputBorder.none,
              ),
            ),
            const SizedBox(height: 10),
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
            } else if (result.data()['password'] != userPassword.text.trim()) {
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
  }
}
