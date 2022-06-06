import 'package:flutter/material.dart';

import 'auth/log_in.dart';


class WelCome extends StatelessWidget {
  const WelCome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
          ),
          Container(
            child: Image(
                image: AssetImage('ast/undraw_everywhere_together_bdmn.png')),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Safe-Secure-fast",
            style: TextStyle(
                color: Color.fromARGB(255, 5, 40, 13),
                fontWeight: FontWeight.bold,
                fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Message or call with your friends \n become more safe and secure ",
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            width: 200,
            height: 40,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'Skip',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(255, 194, 89, 124)),
                ),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                      color: Color.fromARGB(255, 194, 89, 124), width: 1),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                )),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            width: 200,
            height: 40,
            child: OutlinedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Login()));
                },
                child: Text(
                  'Next',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
                style: OutlinedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  backgroundColor: Color.fromARGB(255, 3, 102, 92),
                )),
          ),
        ],
      ),
    );
  }
}
