import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter User Title',
      theme: ThemeData(primarySwatch: 
      Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCustomprofile(),
    );
  }
}

class MyCustomprofile extends StatelessWidget {
  const MyCustomprofile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 180.0,
              width: 360.0,
              color: const Color(0xffAEE6EA),
            ),
            SizedBox(
              height: 50,
              
            ),
            Container(
              height: 300.0,
              width: 320.0,
              color: const Color(0xffDCF7F9),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                      Row(
                      )
                    ],),
                    Text('참여중인 방',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    
                  ],
              ),

            ),
          ],
        ),
      ),
      
    );
    
  }
}
