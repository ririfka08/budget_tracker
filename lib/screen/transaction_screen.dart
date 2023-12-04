import 'package:budget_tracker/widget/tab_bar_view.dart';
import 'package:budget_tracker/widget/time_line_month.dart';
import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({super.key,});
  

  @override
  Widget build(BuildContext context) {
    final String monthYear;
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansive"),
      ),
      body: Column(
        children: [
          TimeLineMonth(onChanged: (String? value) { 
            
           },
          ),
          TypeTabBar(
            monthYear: 'monthYear',
            )
        ],
      ),
    );
  }
}