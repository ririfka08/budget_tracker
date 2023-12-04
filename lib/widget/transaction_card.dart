import 'package:budget_tracker/utils/icons_list.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:budget_tracker/widget/transactions_card.dart';

class TransactionCard extends StatelessWidget {
   TransactionCard({
    super.key, required this.data,
  });
  final dynamic data;
  var appIcons = AppIcons();
  
  @override
  Widget build(BuildContext context) {
    DateTime date = DateTime.fromMillisecondsSinceEpoch(data['timestamp']);
    String formatedDate = DateFormat('d MM hh:mma').format(date);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 10),
              color: Colors.grey.withOpacity(0.09),
              blurRadius: 10.0,
              spreadRadius: 4.0)
          ]
        ),
        child: ListTile(
          leading: Container(
            width: 30, 
            height: 30,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.green.withOpacity(0.2)
            ),
            
            ),
          title: Row(
            children: [
              Expanded(child: Text("${data['title']}")),
              Text(
                "Rp${data['amount']}", 
                style: TextStyle(color: Colors.green),)
            ],
          ),
        subtitle: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
          Row(children: [
            Text("Balance", style: TextStyle(color: Colors.grey, fontSize: 13),),
            Spacer(),
            Text("Rp${data['remainingAmount']}", 
            style: TextStyle(color: Colors.grey, fontSize: 13),)
          ],),
        
          Text(
            formatedDate, 
            style: TextStyle(color: Colors.grey ),)
        
        
        ],),
        ),
      ),
    );
  }
}
