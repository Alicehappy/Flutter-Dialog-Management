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
    );
    if (dialogResult.confirmed) {
      print('User has confirmed');
    } else {
      print('User cancelled  the dialog');
    }
  }
}
