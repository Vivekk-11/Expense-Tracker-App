import 'package:flutter/material.dart';
import 'package:fourth_app/models/expense.dart';
import 'package:fourth_app/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList(
      {super.key, required this.expenses, required this.onRemoveExpense});

  final void Function(Expense expense) onRemoveExpense;

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (ctx, index) => Dismissible(
          onDismissed: (direction) {
            onRemoveExpense(expenses[index]);
          },
          key: ValueKey(
            expenses[index],
          ),
          background: Container(
            color: Theme.of(context).colorScheme.error,
            margin: EdgeInsets.symmetric(
                horizontal: Theme.of(context).cardTheme.margin!.horizontal),
          ),
          child: ExpensesItem(
            expenses[index],
          ),
        ),
      ),
    );
  }
}
