import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YONGJAETO',
      home: Grade(),
    );
  }
}

class Grade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text('YONGJAETO'),
        backgroundColor: Colors.amber[700],
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
      padding: EdgeInsets.fromLTRB(30.0, 40.0, 0.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget> [
          Text('NAME',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
          )
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('BBANTO',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height: 30.0,
          ),
          Text('BBANTO POWER LEVEL',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
          )
          ),
          SizedBox(
            height: 10.0,
          ),
          Text('14',
          style: TextStyle(
            color: Colors.white,
            letterSpacing: 2.0,
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
          ),
          SizedBox(
            height:  30.0,
          ),
          Row(
            children: <Widget> [
              Icon(Icons.check_circle_outline),
              SizedBox(
                width: 10.0,
              ),
              Text('using lightsaber',
              style: TextStyle(
                fontSize: 16.0,
                letterSpacing: 1.0,
              ),
              ),
            ],

          )
        ]
      )
    )
    );
}
}