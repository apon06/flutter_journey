import 'package:flutter/material.dart';

class ScaffoldWidgets extends StatelessWidget {
  const ScaffoldWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(),
      drawer: const Drawer(),
      endDrawer: const Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startTop,
      bottomSheet: null,
      body: null,
      persistentFooterAlignment: AlignmentDirectional.bottomCenter,
    );
  }
}
