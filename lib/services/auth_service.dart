import 'package:budget_tracker/screen/dashboard.dart';
import 'package:budget_tracker/screen/home_screen.dart';
import 'package:budget_tracker/services/db.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthService{
  final FirebaseAuth _auth = FirebaseAuth.instance;
  var db = Db();
  createUser(data,context) async {
    try {
      await _auth.createUserWithEmailAndPassword(
        email: data['email'],
        password: data['password'],
      );
      await db.addUser(data, context);
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: ((context) => const Dashboard())),
      );
       
    } catch (e) {
      showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            title: Text("Sign up Failed"),
            content: Text(e.toString()),
          );
          });
    }
  }
  login(data, context) async {
      try {
      await _auth.signInWithEmailAndPassword(
        email: data['email'],
        password: data['password'],
      );
      Navigator.pushReplacement(
        context, 
        MaterialPageRoute(builder: (context) => const Dashboard()),
      );
    } catch (e) {
      showDialog(
        context: context, 
        builder: (context) {
          return AlertDialog(
            title: Text("Login Failed"),
            content: Text(e.toString()),
          );
          });
    }
  }
    Future<void> signOut() async {
    await _auth.signOut();
  }
}