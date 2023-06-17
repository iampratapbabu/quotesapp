import 'package:flutter/material.dart';
import 'quotes.dart';
import 'quote_card.dart';

void main() {
  runApp(MaterialApp(home: QuoteList()));
}

class QuoteList extends StatefulWidget {
  //const QuoteList({Key? key}) : super(key: key);
  @override
  State<QuoteList> createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {
  List quotes = [
    Quote(text: "hwllo baby how do you do", author: "honey singh"),
    Quote(text: "ek min to theher ja tu", author: "raftar"),
    Quote(text: "aaja clb me mauj krenge", author: "badsah")
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[200],
        appBar: AppBar(
          title: Text("My Quotes"),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: Column(
          children: quotes.map((quote) => QuoteCard(quote:quote,
          delete:(){
            setState(() {
              quotes.remove(quote);
            });
          }
          )).toList(),
        ));
  }
}



