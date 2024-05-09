import 'package:flutter/material.dart';

class ListTitleWidgets extends StatelessWidget {
  const ListTitleWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ListTile(
              title: const Text('Md Apon Ahmed'),
              leading: Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    image: const DecorationImage(
                        image: AssetImage('assets/image/mrbeast.webp'))),
              ),
              subtitle: const Text('oK..'),
              trailing: const Icon(Icons.add),
            ),
            const Divider()
          ],
        ),
      ),
    );
  }
}
