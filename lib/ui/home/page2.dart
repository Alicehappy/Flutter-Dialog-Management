import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Page 2'),
          ),
          body: Builder(builder: (BuildContext context) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Page  click'),
                  color: Colors.lightGreen[100],
                  onPressed: () { },
                ),
              ],
            ));
          },
        ),
    );
  }
}
