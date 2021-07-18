import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:msobook/HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          splash: Image.asset(
            'assets/logo.png',
          ),
          splashIconSize: 150,
          nextScreen: WelCome(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.blueAccent,
        ));
  }
}

class WelCome extends StatelessWidget {
  const WelCome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: AnimatedSplashScreen(
          duration: 3000,
          splash: Image.asset(
            'assets/splash.png',
          ),
          splashIconSize: 700,
          nextScreen: MyApp(),
          splashTransition: SplashTransition.fadeTransition,
          backgroundColor: Colors.white70,
        ));
  }
}
