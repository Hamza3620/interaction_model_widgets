import 'package:flutter/material.dart';

import 'package:dotted_border/dotted_border.dart';

class DraggableDemo extends StatefulWidget {
  const DraggableDemo({super.key});

  @override
  State<DraggableDemo> createState() => _DraggableDemoState();
}

class _DraggableDemoState extends State<DraggableDemo> {
  bool isSuccessful = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Draggable")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Draggable<FlutterLogo>(
              onDraggableCanceled: (velocity, offset) {
                debugPrint("Cancelled");
              },
              data: const FlutterLogo(
                size: 100.0,
              ),
              feedback: const FlutterLogo(
                size: 120.0,
              ),
              childWhenDragging: const Opacity(
                opacity: 0.5,
                child: FlutterLogo(
                  size: 100.0,
                ),
              ),
              child: isSuccessful
                  ? Container()
                  : const FlutterLogo(
                      size: 100.0,
                    ),
              onDragEnd: (details) {},
            ),
            DragTarget<FlutterLogo>(
              builder: (context, candidateData, rejectedData) {
                return Center(
                    child: isSuccessful
                        ? FlutterLogo(
                            size: 100,
                          )
                        : Padding(
                            padding: const EdgeInsets.only(top: 100.0),
                            child: DottedBorder(
                              color: Colors.black,
                              // gap: 3,
                              strokeWidth: 1,
                              child: Container(
                                  height: 200.0,
                                  width: 200.0,
                                  color: Colors.grey[400],
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5)),
                                    color: Colors.grey[400],
                                    child: Center(
                                      child: Text(
                                        'DROP_ITEMS_HERE',
                                        style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 22.0),
                                      ),
                                    ),
                                  )),
                            ),
                          ));
              },
              onWillAccept: (data) {
                return true;
              },
              onAccept: (data) {
                setState(() {
                  isSuccessful = true;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
