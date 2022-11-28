import 'package:flutter/material.dart';

class DragTargetDemo extends StatefulWidget {
  const DragTargetDemo({super.key});

  @override
  State<DragTargetDemo> createState() => _DragTargetDemoState();
}

class _DragTargetDemoState extends State<DragTargetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("DragTarget")),
      body: const Center(),
    );
  }
}
