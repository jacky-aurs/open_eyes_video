import 'package:get/get.dart';

class HomeMainPageLogic extends GetxController {
  RxInt currentIndex = 0.obs;

  void changeIndex(index) {
    currentIndex.value = index;
    update();
    print("当前下标 $currentIndex");
  }
}
