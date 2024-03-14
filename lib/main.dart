import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:friendss/front_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.black,
        duration: 2000,
        splash: 'assets/friendss.png',
        nextScreen: const FrontPage(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}


