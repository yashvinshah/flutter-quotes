// ignore_for_file: override_on_non_overriding_member, unnecessary_string_interpolations, prefer_const_constructors, use_key_in_widget_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() =>  runApp(const MaterialApp(
  home: Quotelist(),
));

class Quotelist extends StatefulWidget {
   const Quotelist({super.key}) ;
  
  @override
  State<Quotelist> createState() => _QuotelistState();
}

class _QuotelistState extends State<Quotelist> {

List<Quote> quotes = [

  Quote(author: 'Colleen Hoover', text: 'Sometimes moving on is the only way to move on'),
  Quote(author: 'Oscar Wilde', text: 'Be yourself; everyone else is already taken'),
  Quote(author: 'Vedant Bhawnani', text: 'You never unlove someone, you start loving others better'),
  Quote(author: 'Yashvi Shah', text: 'People dont hate lies; they hate finding out they were lied to'),

];


  @override

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[100],
      appBar: AppBar(
        title: Text('101Quotes'),
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 7, 141, 146),
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: () {
            setState(() {
              quotes.remove(quote);
            });
                      })).toList(),
        ));
  }
}
