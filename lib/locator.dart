import 'package:get_it/get_it.dart';
import 'package:myapp/services/dialog_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => DialogService());
}
