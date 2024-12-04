import 'dart:io';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid
            .v4(); // quando questa classe viene inizializzata, al uuid li assegniamo un valore univoco creato sopra

  String id;
  String title;
  double amount;
  DateTime date;
  Category category; // leisure

  String get formatteDate {
    return formatter.format(date);
  }

  Expense.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        title = json['title'],
        amount = json['amount'],
        date = json['date'],
        category = json['category'];

  Map<String, dynamic> toJson() => {
        'id': id,
        'title': title,
        'amount': amount,
        'date': date,
        'category': category,
      };

  // ···
  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    //("directory.path -- " + directory.path);
    return directory.path;
  }

  Future<File> get _localFile async {
    final path = await _localPath;
    return File('$path/expenses.txt');
  }

// write data to the file
  Future<File> writeCounter(int expenses) async {
    final file = await _localFile;

    // Write the file
    return file.writeAsString('$expenses');
  }
}
