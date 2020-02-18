import 'dart:async';

//import 'package:flutter/material.dart';
import 'package:myapp/datamodels/alert/alert_request.dart';
import 'package:myapp/datamodels/alert/alert_response.dart';

class DialogService {
  Function(AlertRequest) _showDialogListener;
  Function(AlertResponse) _showSnackBarListener;
  Completer<AlertResponse> _dialogCompleter;

  // Registers a callback function. Typically to show the dialog
  void registerDialogListener(Function(AlertRequest) showDialogListener) {
    _showDialogListener = showDialogListener;
  }

  // Registers a callback function. Typically to show the snackbar
  void registerSnackBarListener(Function(AlertResponse) showSnackBarListener) {
    _showSnackBarListener = showSnackBarListener;
  }

  // Calls the dialog listener and returns a Future that will
  // wait for dialogCompleter.
  Future<AlertResponse> showDialog({
    String title,
    String description,
    String buttonTitle,
    String buttonTitle1,
    String text,
    String text1,
    
  }) {
    _dialogCompleter = Completer<AlertResponse>();
    _showDialogListener(AlertRequest(
      title: title,
      description: description,
      buttonTitle: buttonTitle,
      buttonTitle1: buttonTitle1,
      text: text,
      text1: text1,
    ));
    return _dialogCompleter.future;
  }

  void showSnackBar(AlertResponse response) {
    _showSnackBarListener(response);
  }

  // Completes the _dialogCompleter to resume the Future's execution call
  void dialogComplete(AlertResponse response) {

    _dialogCompleter.complete(response);
    _dialogCompleter = null;

  }
}
