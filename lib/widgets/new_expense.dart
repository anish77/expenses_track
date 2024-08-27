import 'package:flutter/material.dart';

class NewEspense extends StatefulWidget {
  const NewEspense({super.key});

  @override
  State<StatefulWidget> createState() {
    return _NewEspense();
  }
}

class _NewEspense extends State<NewEspense> {
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          TextField(
            maxLength: 50,
            decoration: InputDecoration(
              label: Text('Title'),
            ),
          ),
        ],
      ),
    );
  }
}
