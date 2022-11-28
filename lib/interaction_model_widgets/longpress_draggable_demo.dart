import 'package:flutter/material.dart';

class LongPressDraggableDemo extends StatefulWidget {
  const LongPressDraggableDemo({super.key});

  @override
  State<LongPressDraggableDemo> createState() => _LongPressDraggableDemoState();
}

class _LongPressDraggableDemoState extends State<LongPressDraggableDemo> {
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("LongPressDraggable")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const LongPressDraggable<Text>(
              feedback: Text('Woolha.com',
                  style: TextStyle(color: Colors.yellow, fontSize: 36)),
              child: Text('Woolha.com',
                  style: TextStyle(color: Colors.teal, fontSize: 36)),
            ),
            DragTarget<Text>(
              builder: (BuildContext context, data, rejects) {
                return isSuccessful
                    ? Text("Website Name")
                    : Container(
                        width: 250,
                        height: 100,
                        color: Colors.grey,
                      );
              },
              onAccept: (data) {
                print(data);
              },
              onAcceptWithDetails: (DragTargetDetails<Text> dragTargetDetails) {
                print('onAcceptWithDetails');
                print('Data: ${dragTargetDetails.data}');
                print('Offset: ${dragTargetDetails.offset}');
              },
            )
          ],
        ),
      ),
    );
  }
}
