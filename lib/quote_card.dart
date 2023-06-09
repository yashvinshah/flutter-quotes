// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {

final Quote quote;
final VoidCallback delete;
QuoteCard({required this.quote, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16, 16, 16, 0),
      color: Colors.cyan[200],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          Center
          (
            child: Text(
              quote.text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.blueGrey[800] ),
            ),
          ),
          SizedBox(height: 6,),
          Center(
            child: Text(
              quote.author,
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 112, 135, 147) ),
            ),
          ),
          SizedBox(height: 8,),
          ElevatedButton.icon(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.fromLTRB(8, 0, 0, 0),
              backgroundColor: Color.fromARGB(255, 163, 208, 231),
            ),
            onPressed: delete, 
            label: Text(''),
            icon: Icon(Icons.delete_rounded,
            ),
          ),
        ],
        ),
      ));
  }
}