import 'package:flutter/material.dart';
import 'package:interaction_model_widgets/widget_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      // navigatorObservers: [MyNavigatorObserver()],
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WidgetList(),
    );
  }
}

class MyNavigatorObserver extends NavigatorObserver {
  List<Route<dynamic>> routeStack = [];

  @override
  void didPush(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    debugPrint("didPush method called:");
    debugPrint(route.toString());
    routeStack.add(route!);
  }

  @override
  void didPop(Route<dynamic>? route, Route<dynamic>? previousRoute) {
    // debugPrint("didPop method called:");
    debugPrint(route.toString());
    routeStack.removeLast();
  }

  @override
  void didRemove(Route? route, Route? previousRoute) {
    debugPrint("didRemove method called:");
    debugPrint(route.toString());
    routeStack.removeLast();
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    debugPrint("didReplace method called:");
    debugPrint(oldRoute.toString());
    debugPrint(newRoute.toString());
    routeStack.removeLast();
    routeStack.add(newRoute!);
  }
}
