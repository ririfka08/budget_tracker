import 'package:budget_tracker/screen/login_screen.dart';
import 'package:budget_tracker/services/auth_service.dart';
import 'package:budget_tracker/widget/add_transaction_form.dart';
import 'package:budget_tracker/widget/hero_card.dart';
import 'package:budget_tracker/widget/transactions_card.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:budget_tracker/widget/add_transaction_form.dart';
// ignore_for_file: prefer_const_constructors
// ignore_for_file: prefer_const_literals_to_create_immutables

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var isLogoutLoading = false;
  logout () async {
    setState(() {
      isLogoutLoading = true;
    });
    await FirebaseAuth.instance.signOut();
    Navigator.pushReplacement(
      context, 
      MaterialPageRoute(builder: (context) => LoginView()),
      );
    setState(() {
      isLogoutLoading = false;
    });
  }

final userId = FirebaseAuth.instance.currentUser!.uid;

_dialoBuilder(BuildContext context) {
  return showDialog(
    context: context, 
    builder: (context) {
      return AlertDialog(
        content: AddTransactionForm(),
      );
    });
    
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue.shade900,
        onPressed: (() {
          _dialoBuilder(context); 
        }),
        child: Icon(
          Icons.add,
          color: Colors.white,
          ),
        ),
      appBar: AppBar(
        backgroundColor: Colors.blue.shade900,
        title: Text(
          "Halo,", 
        style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed:logout, 
            icon: 
            isLogoutLoading 
            ? CircularProgressIndicator()
            : Icon(Icons.exit_to_app, color: Colors.white,))
            ],
        ),
      body: Column(
        children: [
          HeroCard(userId: userId,
          ), 
          TransactionsCard(),
        ],
      ),
    );
  }
}