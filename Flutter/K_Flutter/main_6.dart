import 'dart:js';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter/material.dart';
import 'package:myapp/main_1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Toast message',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyApp(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Toast message'),
        centerTitle: true,
      ),
      body: Center(
        child: FlatButton(
          onPressed: (){
            flutterToast();
          },
           child: Text('Toast'),
           color:  Colors.blue,
           ),
      ),
    );
  }
}


void flutterToast(){
  Fluttertoast.showToast(msg: 'Flutter',
  gravity: ToastGravity.BOTTOM,
  backgroundColor: Colors.redAccent,
  fontSize: 20.0,
  textColor: Colors.white,
  toastLength: Toast.LENGTH_SHORT
  );
}