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
          appBar: AppBar(
            title: const Text('Home View'),
          ),
          body: Builder(builder: (BuildContext context) {
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                FlatButton(
                  child: Text('Show Custom Alert Dialog'),
                  color: Colors.pink[100],
                  onPressed: () {
                    model.doCustomAlertThings(context);
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
            ));
          }),
        ),
      ),
    );
  }
}
