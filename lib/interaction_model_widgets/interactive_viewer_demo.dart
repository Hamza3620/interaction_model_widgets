import 'package:flutter/material.dart';

class InteractiveViewerDemo extends StatefulWidget {
  const InteractiveViewerDemo({super.key});

  @override
  State<InteractiveViewerDemo> createState() => _InteractiveViewerDemoState();
}

class _InteractiveViewerDemoState extends State<InteractiveViewerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("InteractiveViewer")),
      body: Center(
        child: InteractiveViewer(
          // boundaryMargin: const EdgeInsets.all(20),
          minScale: 0.1,
          maxScale: 5,
          child: Image.network(
            "https://picsum.photos/id/11/2500/1667",
          ),
        ),
      ),
    );
  }
}
