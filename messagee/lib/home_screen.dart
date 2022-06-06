import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Splash Screen Example")),
      body: Stack(children: [
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
      ]),
    );
  }
}
