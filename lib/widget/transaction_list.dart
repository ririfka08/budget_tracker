import 'package:budget_tracker/widget/transaction_card.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class TransactionList extends StatelessWidget {
   TransactionList({super.key, required this.type, required this.monthYear});
   final userId = FirebaseAuth.instance.currentUser!.uid;
   final String type;
   final String monthYear;

  @override
  Widget build(BuildContext context) { 
    Query query = FirebaseFirestore.instance
      .collection('users')
      .doc(userId)
      .collection("transaction")
      .orderBy('timestamp', descending:true)
      .where('monthYear', isEqualTo: monthYear)
      .where('type', isEqualTo: type);
      
    return FutureBuilder<QuerySnapshot>(
      future: query.limit(150).get(),
      builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
        if (snapshot.hasError) {
          return Center(child: Text('Something went wrong'));
        } else if (snapshot.connectionState == ConnectionState.waiting) {
          return Text("Loading");
        } else if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(child: Text('No transactions found.'));
        }
        var data = snapshot.data!.docs;
        return ListView.builder(
            shrinkWrap: true,
            itemCount: data.length,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
            var cardData = data[index];
            return TransactionCard(
              data: cardData,
        ); 
      });
});


}
  }
