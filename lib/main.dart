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
          child: const ColoredBox(
            color: Colors.transparent,
            child: SizedBox(
              height: 500,
              width: 500,
            ),
          ),
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
      ..style = PaintingStyle.fill
      ..strokeJoin = StrokeJoin.round
      ..strokeWidth = 2;

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

    // final Path batteryPath = Path();

    // batteryPath.moveTo(50, 0);
    // batteryPath.relativeLineTo(100, 0);
    // batteryPath.relativeLineTo(0, 20);
    // batteryPath.relativeLineTo(8, 0);
    // batteryPath.relativeLineTo(0, 10);
    // batteryPath.relativeLineTo(-8, 0);
    // batteryPath.relativeLineTo(0, 20);
    // batteryPath.relativeLineTo(-100, 0);
    // batteryPath.close();

    // canvas.drawPath(batteryPath, paint);

    // final Path flutterIconOnePath = Path();
    // final Path flutterIconTwoPath = Path();

    // flutterIconOnePath.moveTo(10, size.width / 2);
    // flutterIconOnePath.relativeLineTo(10, 10);
    // flutterIconOnePath.relativeLineTo(50, -50);
    // flutterIconOnePath.relativeLineTo(-20, 0);
    // flutterIconOnePath.close();

    // flutterIconTwoPath.moveTo(25, (size.width / 2) + 15);
    // flutterIconTwoPath.relativeLineTo(20, 20);
    // flutterIconTwoPath.relativeLineTo(18, 0);
    // flutterIconTwoPath.relativeLineTo(-18, -18);
    // flutterIconTwoPath.relativeLineTo(22, -22);
    // flutterIconTwoPath.relativeLineTo(-23, 0);
    // flutterIconTwoPath.close();

    // canvas.drawPath(flutterIconOnePath, paint);
    // canvas.drawPath(flutterIconTwoPath, paint);

    // const TextStyle textStyle = TextStyle(color: Colors.black, fontSize: 40);
    // const TextSpan textSpan = TextSpan(text: 'Flutter', style: textStyle);
    // final TextPainter textPainter = TextPainter(
    //   text: textSpan,
    //   textDirection: TextDirection.ltr,
    // );
    // final Offset textOffset = Offset(80, (size.width / 2) - 20);

    // textPainter.layout(minWidth: 0, maxWidth: size.width);

    // textPainter.paint(canvas, textOffset);
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
