// ignore_for_file: prefer_const_constructors

import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flash_chat/app/pages/home_page.dart';
import 'package:flash_chat/components/registerwidget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignInPage extends StatefulWidget {
  SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  String? email;

  String? password;

  Future<void> signIn() async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email!, password: password!);
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => HomePage()));
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        log('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        ;
        log('Wrong password provided for that user.');
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Sign In',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87),
            ),
            SizedBox(
              height: 50,
            ),
            TextFormField(
              onChanged: (value) {
                email = value;
              },
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'email',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            TextFormField(
              onChanged: (value) {
                password = value;
              },
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
              decoration: InputDecoration(
                  hintText: 'password',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey, width: 3),
                    borderRadius: BorderRadius.circular(30),
                  )),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  'allready have account?',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  width: 20,
                ),
                InkWell(
                  onTap: () {
                    context.go('/sign_up_page');
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.black87,
                        fontWeight: FontWeight.w200),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            RegisterWidget(
                onTap: () {
                  if (email!.isNotEmpty && password!.isNotEmpty) {
                    signIn();
                  }
                  //context.go('/home_page');
                },
                title: 'Sign In'),
          ],
        ),
      ),
    );
  }
}
