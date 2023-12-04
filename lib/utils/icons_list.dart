import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AppIcons {
  final List<Map<String, dynamic>> homeExpensesCategories = [
    {
      "name": "Food",
      "icon": FontAwesomeIcons.bowlFood,
    },
    {
      "name": "Grocery",
      "icon": FontAwesomeIcons.shoppingBasket,
    },
    {
      "name": "Internet",
      "icon": FontAwesomeIcons.wifi,
    },
    {
      "name": "Electricity",
      "icon": FontAwesomeIcons.bolt,
    },
    {
      "name": "Phone Bill",
      "icon": FontAwesomeIcons.phone,
    },
    {
      "name": "Self Reward",
      "icon": FontAwesomeIcons.gift,
    },
    ];

  IconData getExpenseCategoryIcons(String categoryName) {
    final category = homeExpensesCategories.firstWhere(
      (category) => category['name'] == categoryName, 
      orElse: () => {"icon" : FontAwesomeIcons.shoppingCart});
    return category['icon'];
  }
}