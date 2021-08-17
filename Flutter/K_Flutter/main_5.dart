import 'dart:js';

import 'package:flutter/material.dart';
import 'package:myapp/main_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SnackBar',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyApp(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Snack Bar'),
        centerTitle: true,
      ),
      body: MySnackBar(),
    );
  }
}

class MySnackBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RaisedButton(
        child: Text('Show me'),
        onPressed: () {
        Scaffold.of(context)
        .showSnackBar(SnackBar(
          content: Text('Hellow',
          textAlign: TextAlign.center,
          style:  TextStyle(
            color:  Colors.white
          ),
          ),
          backgroundColor: Colors.teal,
          duration: Duration(milliseconds: 1000),
        ),
        );
      }),
    );
  }
}
