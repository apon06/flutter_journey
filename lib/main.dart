// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
// import 'package:flutter_journey/firebase_options.dart';
// import 'package:flex_color_scheme/flex_color_scheme.dart';
// import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/7_Storage/8_Advanced_Dart/Stream/stream1.dart';
import 'package:flutter_journey/flutter/1_Learn_the_Basics_of_Dart/2_widgets/3_working_assets/4_Design_Principles/5_Package_Manager/6_Working_with_APIs/7_Storage/8_Advanced_Dart/Stream/stream2.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      // theme:
      //     FlexThemeData.light(scheme: FlexScheme.mandyRed, useMaterial3: true),
      // darkTheme: FlexThemeData.dark(scheme: FlexScheme.red, useMaterial3: true),
      themeMode: ThemeMode.system,
      title: 'Flutter Learning',
      home: StreamFlutter2(),
      // home: const Question(categoryName: 'Animal'),
    );
  }
}
