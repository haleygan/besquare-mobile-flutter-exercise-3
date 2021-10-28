import 'package:exercise_three/signupform.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Exercise 3',
        theme: ThemeData(),
        home: Scaffold(
            backgroundColor: Colors.purple[50],
            body: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.all(30)),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text('Sign Up to Purple',
                        style: TextStyle(
                            fontSize: 30,
                            color: Colors.deepPurple[700],
                            fontWeight: FontWeight.bold)),
                  ),
                  Image.asset(
                    'images/purple.png',
                    width: 160,
                    height: 160,
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "free purple-themed stock photos",
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.deepPurple[300],
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                  SignUpForm(),
                ],
              ),
            )));
  }
}
