import'package:untitled/main.dart';
import 'package:get/get.dart';

class ChipsController extends GetxController {
  ChipsController instance = Get.find() ;

  @override
  void onReady() {
    super.onReady();
  }

  onTapped() {
    isTapped ? false : true ;
  }
}