import 'package:flutter/material.dart';
import 'package:fourth_app/widgets/expenses_list/expenses_list.dart';
import 'package:fourth_app/models/expense.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: "Flutter Course",
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: "Cinema",
        amount: 15.99,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("The Chart..."),
          ExpensesList(expenses: _registeredExpenses)
        ],
      ),
    );
  }
}