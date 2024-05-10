import 'package:flutter/material.dart';

class ListViewBuilderWidgets extends StatelessWidget {
  const ListViewBuilderWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 100,
        itemBuilder: (b,index){
        return const Text('Hello');
      }),
    );
  }
}