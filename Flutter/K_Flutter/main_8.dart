import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YoMinjun',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: MyPage(),
    );
  }
}

class MyPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                margin: EdgeInsets.symmetric(
                  vertical: 30,
                  horizontal: 40
                ),
                padding: EdgeInsets.all(10),
                color: Colors.white,
                child: Text('지존용제'),
          ),
               Container(
                 width: 100,
                 height: 100,
                 padding: EdgeInsets.all(10),
                 color: Colors.grey,
                   child: Text('유튜브'),
               ),
                Container(
                  width: 100,
                  height: 100, margin: EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 10
                ),
                  padding: EdgeInsets.all(10),
                  color: Colors.red,
                  child: Text('구독과 좋아요'),
                ),
            ],
          ),
        )
      ),
    );
  }
}
