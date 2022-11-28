import 'package:flutter/material.dart';

class GestureDetectorDemo extends StatefulWidget {
  const GestureDetectorDemo({super.key});

  @override
  State<GestureDetectorDemo> createState() => _GestureDetectorDemoState();
}

class _GestureDetectorDemoState extends State<GestureDetectorDemo> {
  String actionCaptured = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GestureDetector")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                height: 100,
                color: Colors.yellow,
                child: Text(
                  actionCaptured,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                )),
            GestureDetector(
              onTap: () {
                setState(() {
                  actionCaptured = 'Tapped';
                });
              },
              onDoubleTap: () {
                setState(() {
                  actionCaptured = 'Double Tapped';
                });
              },
              onLongPress: () {
                setState(() {
                  actionCaptured = 'Long Pressed';
                });
              },
              onHorizontalDragStart: (onHorizontalDragStart) {
                setState(() {
                  actionCaptured =
                      '$onHorizontalDragStart: ${onHorizontalDragStart.globalPosition}';
                });
              },
              onHorizontalDragEnd: (onHorizontalDragend) {
                setState(() {
                  actionCaptured =
                      '$onHorizontalDragend: ${onHorizontalDragend.primaryVelocity}';
                });
              },
              onScaleStart: (details) {
                setState(() {
                  actionCaptured = '${details.focalPoint}';
                });
              },
              child: const Card(
                color: Colors.lightBlue,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Test Button"),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
