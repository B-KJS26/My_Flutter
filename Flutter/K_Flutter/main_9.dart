import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FirstPage',
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  FirstPage(),
    );
  }
}


class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context2) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('First Page'),
      ),
      body: Center(
        child: RaisedButton(
            child: Text('Go to the Second page'),
            onPressed: () {
              Navigator.push(context2, MaterialPageRoute(
                  builder: (context) => SecondPage()));
            }),
      ),
            );
  }
}


class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext ctx) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Second Page'),
      ),
      body: Center(
        child: RaisedButton(child: Text('Go to the First page'),
            onPressed: () {
          Navigator.pop(ctx);
            }
        ),
      ),
    );
  }
}


