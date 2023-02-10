import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(
      home: QList(),
    ));

class QList extends StatefulWidget {
  const QList({super.key});

  @override
  State<QList> createState() => _QListState();
}

class _QListState extends State<QList> {
  List<Quote> quotes = [
    Quote(text: 'I have nothing to declare except my genius', author: 'Smith'),
    Quote(
        text: 'Be yourself; everyone else is already taken', author: 'Naftali'),
    Quote(text: 'The truth is realy pure and never simple', author: 'Fess'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.cyanAccent,
      ),
      body: Column(
        children: quotes
            .map((quote) => QuoteCard(
                quote: quote,
                delete: () {
                  setState(() {
                    quotes.remove(quote);
                  });
                }))
            .toList(),
      ),
    );
  }
}
