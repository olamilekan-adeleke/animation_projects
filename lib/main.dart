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
          child: const SizedBox.square(dimension: 200),
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
    // const double radius = 45.0;
    // final Paint paint = Paint()
    //   ..style = PaintingStyle.fill
    //   ..color = rectColor;

    // canvas.drawCircle(center, radius, paint);

    // var p1 = const Offset(100.0, 100.0);
    // var p2 = const Offset(200.0, 200.0);
    // var paint = Paint()
    //   ..color = Colors.blue
    //   ..strokeWidth = 5.0;

    // canvas.drawLine(p1, p2, paint);

    // final Rect rect = Rect.fromCenter(center: center, width: 300, height: 150);
    // final Paint paint = Paint()..color = rectColor;

    // canvas.drawArc(rect, 0.0, pi / 2, true, paint);

    canvas.drawPaint(Paint()..color = rectColor);
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
