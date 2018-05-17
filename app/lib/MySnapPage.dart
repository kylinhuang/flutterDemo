import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';  // Add this line.

/// MySnapPage
class MySnapPage extends StatefulWidget {
  @override
  _MySnapPageState createState() => new _MySnapPageState();
}

class _MySnapPageState extends State<MySnapPage> {
  @override
  Widget build(BuildContext context) {

    final wordPair = new WordPair.random(); // Add this line.

    return new Scaffold(
//      appBar: new AppBar(title: new Text("MySnapPage"),),
//      body: new Center(child: new Text("MySnapPage")),
      body: new Center(child: new RandomWords() ),

    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => new RandomWordsState();
}

class RandomWordsState extends State<RandomWords> {
  @override                                  // Add from this line ...
  Widget build(BuildContext context) {
    final WordPair wordPair = new WordPair.random();
    return new Text(wordPair.asPascalCase);
  }                                          // ... to this line.
}