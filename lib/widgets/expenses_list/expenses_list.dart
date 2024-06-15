import 'package:flutter/material.dart';
import 'package:fourth_app/models/expense.dart';
import 'package:fourth_app/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => ExpensesItem(
          expenses[index],
        ),
      ),
    );
  }
}
