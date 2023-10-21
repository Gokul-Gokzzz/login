import 'package:flutter/material.dart';
import 'package:login1/splash.dart';




const SAVE_KEY_NAME = 'UserLogin';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Login Page',
      
      home: ScreenSplash(),
    );
  }
}
