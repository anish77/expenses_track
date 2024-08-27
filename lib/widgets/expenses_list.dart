import 'package:expenses_track/models/expense.dart';
import 'package:expenses_track/widgets/expenses_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => ExpensesItem(expenses[index]),
    ); // ListView is aumotaically scrollable
  }
}
