import 'package:flutter/material.dart';

class TransactionList extends StatefulWidget {
  TransactionList({Key key}) : super(key: key);

  @override
  _TransactionListState createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  List<String> entries = <String>[
    "Toilet Paper",
    "Groceries",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
    "Memes",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 50,
            color: Colors.red,
            child: Text('${entries[index]}'),
          );
        },
      ),
    );
  }
}
