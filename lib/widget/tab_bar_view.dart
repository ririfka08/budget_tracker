import 'package:budget_tracker/widget/transaction_list.dart';
import 'package:flutter/material.dart';
import 'package:budget_tracker/widget/transaction_list.dart';

class TypeTabBar extends StatelessWidget {
  const TypeTabBar({super.key, required this.monthYear});
  final String monthYear;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            TabBar(tabs: [
              Tab(text: "Credit",),
              Tab(text: "Debit",),
            ]),
            Expanded(
              child: TabBarView(children: [
              TransactionList(
                type: 'credit', 
                monthYear: monthYear,
                ),
              TransactionList(
                type: 'debit', 
                monthYear: monthYear,
                ),
            ],))
          ],

        ),));
  }
}