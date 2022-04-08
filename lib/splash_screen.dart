
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:twilio_voice_example/Login.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        backgroundColor: Colors.white,
        splash: Image.asset(
          'assets/phone-icon.png',
          fit: BoxFit.fitWidth,
        ),
        nextScreen: const Login(),
        splashIconSize: 302,
        splashTransition: SplashTransition.fadeTransition,
        duration: 2000,
      ),
    );
  }
}