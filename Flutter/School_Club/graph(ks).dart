import 'dart:ffi';
import 'dart:math'; 
import 'package:flutter/material.dart';
import 'package:myapp/main.dart';
void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyCustomGraph(),
    );
  }
}

class MyCustomGraph extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('custom graph'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Center(
          child: CustomPaint(
            size: Size(300, 300),
            foregroundPainter: BarChart(
              data: <double>[105, 55, 99, 150, 300, 500, 120, 1000, 1800],
              labels: <String>[
                '1',
                '2',
                '3',
                '4',
                '5',
                '6',
                '7',
                '8',
              ],
              color: Colors.redAccent,
            ),
          ),
        ),
    ),
    );
  }
}

class BarChart extends CustomPainter {
  final Color color;
  final List<double> data;
  final List<String> labels;
  double bottomPadding = 0.0;
  double leftPadding = 0.0;
  double textScaleFactorXAxis = 1.0;
  double textScaleFactorYAxis = 1.2;
  
  BarChart({required this.data, required this.labels, this.color = Colors.blue});

  @override
  void paint(Canvas canvas, Size size){
    setTextPadding(size);

    List<Offset> coordinates = getCoordinates(size);

    drawBar(canvas, size, coordinates);
    drawXLabels(canvas, size, coordinates);
    
    
  }

  @override
  bool shouldRepaint(BarChart oldDelegate) {
    return oldDelegate.data != data;
  }

  void setTextPadding(Size size) {
    
  
  }

  void drawBar(Canvas canvas, Size size, List<Offset> coordinates) {
    Paint paint = Paint()
    ..color = color
    ..style = PaintingStyle.fill
    ..strokeCap = StrokeCap.round;


    double barWidthMargin = size.width * 0.09;

    for (int index = 0; index < coordinates.length; index++){
      Offset offset = coordinates[index];
      double left = offset.dx;

      double right = offset.dx + barWidthMargin;
      double top = offset.dy;

      double bottom = size.height - bottomPadding;

      Rect rect = Rect.fromLTRB(left, top, right, bottom);
      canvas.drawRect(rect, paint);
    }
  }

  void drawXLabels(Canvas canvas, Size size, List<Offset> coordinates){
    double fontSize = calculateFontSize(labels[0], size, xAxis: true);

    for (int index = 0; index < labels.length; index++){
      TextSpan span = TextSpan(
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
          fontFamily:  'Roboto',
          fontWeight: FontWeight.w500,
        ),
        text: labels[index],
      );
      TextPainter tp =
          TextPainter(text: span, textDirection: TextDirection.ltr);
          tp.layout();

          Offset offset = coordinates[index];
          double dx = offset.dx;
          double dy = size.height - tp.height;

          tp.paint(canvas, Offset(dx, dy));
    }
  }

  
  
  double calculateFontSize(String value, Size size, {required bool xAxis}) {
    
    int numberOfCharacters = value.length;

    double fontSize = (size.width / numberOfCharacters) / data.length;

    if(xAxis) {
      fontSize *= textScaleFactorXAxis;
    } else {
      fontSize *= textScaleFactorYAxis;
    }
    return fontSize;
  }

  
  void  drawYText(Canvas canvas, String text, double fontSize, double y) {
    TextSpan span = TextSpan(
      style: TextStyle(
        fontSize: fontSize,
        color: Colors.black,
        fontFamily: 'Roboto',
        fontWeight: FontWeight.w600,
      ),
      text: text,
    );
    TextPainter tp = TextPainter(text: span, textDirection: TextDirection.ltr);

    tp.layout();

    Offset offset = Offset(0.0, y);
    tp.paint(canvas, offset);
  }

  List<Offset> getCoordinates(Size size){
    List<Offset> coordinates = <Offset>[];

    double maxData = data.reduce(max);
    
    double width = size.width - leftPadding;
    double minBarWidth = width / data.length;

    for(int index = 0; index < data.length; index++) {

      double left = minBarWidth * (index) + leftPadding;

      double normalized = data[index] / maxData;

      double height = size.height - bottomPadding;

      double top = height - normalized * height;

      Offset offset = Offset(left, top);
      coordinates.add(offset);
    }
    return coordinates;
  }
}


