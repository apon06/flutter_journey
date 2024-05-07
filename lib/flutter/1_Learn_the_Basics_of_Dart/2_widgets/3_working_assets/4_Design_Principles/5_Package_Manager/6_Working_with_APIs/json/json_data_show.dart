import 'dart:convert';
import 'package:flutter/material.dart';

class JsonDataShow extends StatelessWidget {
  const JsonDataShow({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: DefaultAssetBundle.of(context)
            .loadString('assets/json/apps_data.json'),
        builder: (context, snapShot) {
          if (snapShot.connectionState == ConnectionState.waiting) {
            return const CircularProgressIndicator();
          }
          Map<String, dynamic> jsonData = json.decode(snapShot.data as String);
          var allAppName = jsonData["allappname"];

          return Center(
            child: Text(allAppName),
          );
        },
      ),
    );
  }
}
