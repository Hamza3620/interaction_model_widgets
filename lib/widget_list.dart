import 'package:flutter/material.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/absorb_pointer_demo.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/dismissible_demo.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/drag_target_demo.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/draggable_demo.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/gesture_detector_demo.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/ignore_pointer_demo.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/interactive_viewer_demo.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/longpress_draggable_demo.dart';
import 'package:interaction_model_widgets/interaction_model_widgets/navigator_demo.dart';
import 'package:interaction_model_widgets/screenshot_example.dart';

class WidgetList extends StatelessWidget {
  const WidgetList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Animation Widgets")),
      body: ListView(
        children: [
          cardTile(context, "AbsorbPointer", const AbsorbPointerDemo()),
          cardTile(context, "Dismissible", const DismissibleDemo()),
          cardTile(context, "DragTarget", const DragTargetDemo()),
          cardTile(context, "Draggable", const DraggableDemo()),
          cardTile(context, "GestureDetector", const GestureDetectorDemo()),
          cardTile(context, "IgnorePointer", const IgnorePointerDemo()),
          cardTile(context, "InteractiveViewer", const InteractiveViewerDemo()),
          cardTile(
              context, "LongPressDraggable", const LongPressDraggableDemo()),
          cardTile(context, "Navigator", const NavigatorDemo()),
          cardTile(context, "ScreenShot", const ScreenShotExample())
        ],
      ),
    );
  }

  cardTile(BuildContext context, String title, Widget w) {
    return Card(
      elevation: 8,
      shadowColor: Colors.purple,
      margin: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.lightBlue,
              Colors.cyan,
            ],
            stops: [0.8, 0.1],
            // begin: Alignment.topLeft,
            // end: Alignment.bottomRight,
          ),
        ),
        child: ListTile(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => w,
              ));
            },
            title: Text(title)),
      ),
    );
  }
}
