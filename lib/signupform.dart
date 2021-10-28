import 'package:flutter/material.dart';
import 'package:exercise_three/gender.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);
  @override
  SignUpFormState createState() => SignUpFormState();
}

class SignUpFormState extends State<SignUpForm> {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Enter Your Name'),
              validator: (value) {
                if (value == null || value.length < 5) {
                  return 'Include at least 5 characters';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Enter Your Email'),
              validator: (value) {
                if (value == null || value.contains('@') == false) {
                  return 'Invalid email format';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: TextFormField(
              decoration: InputDecoration(labelText: 'Enter Your Password'),
              validator: (value) {
                if (value == null || value.length < 8 || value.length > 15) {
                  return 'Enter 8-15 characters';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
            child: Gender(),
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Colors.deepPurple)),
                  child: Text('Sign Up'),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      final snackBar = SnackBar(
                        content: Text('Successful Sign Up'),
                      );

                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    } else {
                      return null;
                    }
                  }))
        ],
      ),
    );
  }
}
