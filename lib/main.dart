import 'package:flutter/material.dart';

import './pages/homepage.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final List<String> _questions = [];

  void _addQuestion(String question) {
    setState(() {
      _questions.add(question);
    });
  }

  /* void _deleteProduct(int index) {
    setState(() {
      _products.removeAt(index);
    });
  }
  */

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sarvodian',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        accentColor: Colors.teal,
      ),
      home: MyHomePage(_questions, _addQuestion),
    );
  }
}