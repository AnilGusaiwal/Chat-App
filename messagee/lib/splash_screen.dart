import 'dart:async';

import 'package:flutter/material.dart';
import 'package:messagee/welcome.dart';

import 'home_screen.dart';

class SpalshScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SpalshScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 5),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => WelCome())));
  }

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Center(
        child: Container(
          child: Image(
            image: AssetImage('ast/Splash1.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
      Center(
        child: Container(
          child: Image(
            image: AssetImage('ast/Group 449.png'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    ]);
  }
}

