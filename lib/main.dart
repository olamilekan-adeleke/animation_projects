import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: CustomPaint(
          painter: DemoPainter(Colors.teal),
          child: const SizedBox.square(dimension: 300),
        ),
      ),
    );
  }
}

class DemoPainter extends CustomPainter {
  DemoPainter(this.rectColor);

  final Color rectColor;

  // final Rect rect = Rect.fromCenter(
  //   center: const Offset(100.0, 100.0),
  //   height: 50,
  //   width: 50,
  // );

  @override
  void paint(Canvas canvas, Size size) {
    final Offset center = Offset(size.width / 2, size.height / 2);
    final Paint paint = Paint()
      ..color = rectColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 5;

    // final Path triangle = Path();

    // triangle.moveTo(0, 150);
    // triangle.relativeLineTo(100, 100);
    // triangle.relativeLineTo(-200, 0);
    // triangle.close();

    // canvas.drawPath(triangle, paint);

    // const Path square = Path();

    // final Rect square = Rect.fromLTRB(200, 00, 100, 100);
    // canvas.drawRect(square, paint);

    // final Path polygon = Path();

    // polygon.moveTo(200, 0);
    // polygon.relativeLineTo(75, 50);
    // polygon.relativeLineTo(0, 75);
    // polygon.relativeLineTo(-75, 50);
    // polygon.relativeLineTo(-75, -50);
    // polygon.relativeLineTo(0, -75);
    // polygon.close();

    // canvas.drawPath(polygon, paint);

    // final Path cross = Path();

    // cross.moveTo(100, 0);
    // cross.relativeLineTo(50, 0);
    // cross.relativeLineTo(0, 50);
    // cross.relativeLineTo(50, 0);
    // cross.relativeLineTo(0, 50);
    // cross.relativeLineTo(-50, 0);
    // cross.relativeLineTo(0, 50);
    // cross.relativeLineTo(-50, 0);
    // cross.relativeLineTo(0, -50);
    // cross.relativeLineTo(-50, 0);
    // cross.relativeLineTo(0, -50);
    // cross.relativeLineTo(50, 0);
    // cross.close();

    // canvas.drawPath(cross, paint);

    // double radius = 100;
    // const Offset center2 = Offset(200, 500);
    // while (radius > 0) {
    //   canvas.drawCircle(center, radius, paint);
    //   radius -= 10;
    // }
  }

  @override
  bool shouldRepaint(covariant DemoPainter oldDelegate) {
    return rectColor != oldDelegate.rectColor;
  }

  // @override
  // bool? hitTest(Offset position) {
  //   return rect.contains(position);
  // }
}
