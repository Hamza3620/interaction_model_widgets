import 'package:flutter/material.dart';

class IgnorePointerDemo extends StatefulWidget {
  const IgnorePointerDemo({super.key});

  @override
  State<IgnorePointerDemo> createState() => _IgnorePointerDemoState();
}

class _IgnorePointerDemoState extends State<IgnorePointerDemo> {
  bool ignoring = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("IgnorePointer")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  ignoring = !ignoring;
                });
              },
              child: Text(
                ignoring ? 'Set ignoring to false' : 'Set ignoring to true',
              ),
            ),
            IgnorePointer(
              ignoring: ignoring,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text('Ignoring: $ignoring'),
                  ElevatedButton(
                    onPressed: () {
                      debugPrint("TESTING");
                    },
                    child: const Text('Click me!'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
