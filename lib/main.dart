import 'package:flutter/material.dart';
import 'package:fourth_app/widgets/expenses.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(useMaterial3: true),
    home: const Expenses(),
  ));
}
