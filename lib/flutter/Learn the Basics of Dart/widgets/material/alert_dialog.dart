import 'package:flutter/material.dart';

class AlartWidgets extends StatelessWidget {
  const AlartWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () async {
              return showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Hi...!'),
                    content: SizedBox(
                      height: 150,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('No')),
                              TextButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: const Text('Ok')),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            },
            child: const Text('Click')),
      ),
    );
  }
}
