import 'package:flutter/material.dart';
import 'package:myapp/managers/dialog_manager.dart';
import 'package:myapp/locator.dart';
import 'package:myapp/ui/home/home_view.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, widget) => Navigator(
        onGenerateRoute: (settings) => MaterialPageRoute(
          builder: (context) => DialogManager(
            child: widget,
          ),
        ),
      ),
      title: 'Dialog Manager Setup',
      home: HomeView(),
    );
  }
}
