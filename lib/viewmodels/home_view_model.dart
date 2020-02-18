import 'package:flutter/foundation.dart';
import 'package:myapp/services/dialog_service.dart';
import 'package:myapp/locator.dart';

class HomeViewModel extends ChangeNotifier {
  DialogService _dialogService = locator<DialogService>();
  
  Future doThings() async {
    print('dialog called');
    var dialogResult = await _dialogService.showDialog(
      title: 'Title 1',
      description: 'I love baobeier!',
      buttonTitle: 'Ok',
    );
    if (dialogResult.confirmed) {
      print('User has confirmed');
    } else {
      print('User cancelled  the dialog');
    }
  }

  Future doConfirmThings() async {
    print('Confirm dialog called');
    var dialogResult = await _dialogService.showDialog(
      title: 'Confirm Title 1',
      description: 'Confirm I love baobeier!',
      buttonTitle: 'Ok',
      buttonTitle1: 'Cancel',
    );
    if (dialogResult.confirmed != null && dialogResult.confirmed) {
      print('Confirm User has confirmed');
    } else if(dialogResult.canceled){
      print('Confirm User cancelled the dialog - click cancel button');
    } else {
      print('Click dropback close the dialog.');
    }
  }

  Future doCustomAlertThings() async {
    print('Custom alert dialog called');
    var dialogResult = await _dialogService.showDialog(
      title: 'Custom Alert',
      description: 'I love baobeier!',
      buttonTitle: 'Ok',
    );
    if (dialogResult.confirmed) {
      print('User has confirmed');
    } else {
      print('User cancelled  the dialog');
    }
  }

}

  