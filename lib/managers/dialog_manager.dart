import 'package:flutter/material.dart';
import 'package:myapp/datamodels/alert/alert_request.dart';
import 'package:myapp/datamodels/alert/alert_response.dart';
import 'package:myapp/services/dialog_service.dart';
import 'package:myapp/locator.dart';
import 'package:rflutter_alert/rflutter_alert.dart';


class DialogManager extends StatefulWidget {
  final Widget child;
  DialogManager({Key key, this.child}) : super(key: key);

  _DialogManagerState createState() => _DialogManagerState();
}

class _DialogManagerState extends State<DialogManager> {
  DialogService _dialogService = locator<DialogService>();

  @override
  void initState() {
    super.initState();
    _dialogService.registerDialogListener(_showDialog);
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }

  void _showDialog(AlertRequest request) {
    Alert(
      context: context,
      title: request.title,
      desc: request.description,
      closeFunction: () =>
          _dialogService.dialogComplete(AlertResponse(confirmed: false)),
      buttons: request.buttonTitle1 != null && request.buttonTitle1.length>0 ? [
        DialogButton(
          child: Text(request.buttonTitle),
          onPressed: () {
            _dialogService.dialogComplete(AlertResponse(confirmed: true));
            Navigator.of(context).pop();
          },
        ),
        DialogButton(
          child: Text(request.buttonTitle1),
          onPressed: () {
            _dialogService.dialogComplete(AlertResponse(canceled: true));
            Navigator.of(context).pop();
          },
        )        
      ] :
      [
        DialogButton(
          child: Text(request.buttonTitle),
          onPressed: () {
            _dialogService.dialogComplete(AlertResponse(confirmed: true));
            Navigator.of(context).pop();
          },
        )       
      ]).show();
  } 
}