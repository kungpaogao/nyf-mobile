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
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemCount: entries.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            padding: EdgeInsets.all(16.0),
            margin: EdgeInsets.only(bottom: 8.0, left: 8.0, right: 8.0),
            height: 50,
            color: Colors.white,
            child: Text('${entries[index]}', style: TextStyle(fontSize: 16.0)),
          );
        },
      ),
    );
  }
}
