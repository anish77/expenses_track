import 'package:expenses_track/widgets/logo.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expense Tracker'),
          actions: [],
        ),
        body: const SingleChildScrollView(
          child: Column(
            children: [
              Logo(),
              Logo(),
              Logo(),
            ],
          ),
        ));
  }
}
