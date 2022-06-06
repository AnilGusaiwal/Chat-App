import 'package:flutter/material.dart';
import 'package:messagee/auth/forgot_pass.dart';
import 'package:messagee/auth/signup.dart';
import 'package:messagee/home_screen.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 5, 40, 13),
        toolbarHeight: 150,
        actions: [],
        title: Column(
          children: [
            Text(
              "Log In \n",
              style: TextStyle(fontSize: 25),
            ),
            Text(
              "Welcome Back!",
              style: TextStyle(fontSize: 15),
            )
          ],
        ),
      ),
      backgroundColor: Color.fromARGB(255, 5, 40, 13),
      body: Container(
        width: MediaQuery.of(context).size.width * 1,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          ),
          color: Colors.white, //                 <--- border radius here
        ),
        child: ListView(
          children:[ Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Email"),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Email,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'User Name',
                        hintText: 'anilg2@iitk.ac.in'),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text("Password"),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: Password,
                    obscureText: true,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Enter password'),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                        MaterialPageRoute(builder: (context) => ForgotPassword()));
                        },
                        child: Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Color.fromARGB(255, 48, 148, 138),
                          ),
                        ),),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Center(
                  child: Container(
                    width: 200,
                    height: 40,
                    child: OutlinedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => HomeScreen()));
                        },
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                          backgroundColor: Color.fromARGB(255, 3, 102, 92),
                        )),
                  ),
                ),
                SizedBox(height: 130,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Text(
                          'Don`t have an account',
                          style: TextStyle(
                            color: Color.fromARGB(255, 48, 148, 138),
                          ),
                        ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignUp()));
                        },
                        child: Text(
                          'CREATE ACCOUNT',
                          style: TextStyle(
                            color: Colors.pink,
                          ),
                        ),),
                  ],
                ),
              ],
            ),
          ),
          ],
        ),
      ),
    );
  }
}
