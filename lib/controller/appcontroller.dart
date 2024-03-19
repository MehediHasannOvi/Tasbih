import 'package:get/get.dart';
import 'package:tasbih/data/datasave.dart';

class AppController extends GetxController {
  dynamic values = "English";

  final List<String> language = [
    "English",
    "العربية",
    "বাংলা",
    "Indonesian",
  ];

  void changeLanguage(dynamic value) {
    values = value;
    update();
  }

  void changeTheme(dynamic value) {
    saveTheme(value);
    Get.forceAppUpdate();
    update();
  }

  void changeVibration(dynamic value) {
    saveVibration(value);
    update();
  }

  void deleteCount()  {
    deleteCount();
    update();
  }

  void changeCount(dynamic value) {
    saveCount(value);
    update();
  }
}
