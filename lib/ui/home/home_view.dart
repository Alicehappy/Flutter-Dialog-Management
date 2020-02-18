import 'package:flutter/material.dart';
import 'package:myapp/viewmodels/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: HomeViewModel(),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) => Scaffold(
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                child: Text('Show Custom Alert Dialog'),
                color: Colors.pink[100],
                onPressed: () {
                  model.doCustomAlertThings();
                },
              ),
              FlatButton(
                child: Text('Show Confirm Dialog'),
                color: Colors.lightGreen[200],
                onPressed: () {
                  model.doConfirmThings();
                },
              ),
              FlatButton(
                child: Text('Show Alert Dialog'),
                color: Colors.purple,
                onPressed: () {
                  model.doThings();
                },
              ),
            ],
          )),
        ),
      ),
    );
  }
}
