import 'package:douban/Model/PushModel.dart';
import 'package:get/get.dart';

class pushLogic extends GetxController {
  RxString nextPage = "".obs;
  PushModel pushModel;
  // void getData() {
  //   MineRespository.getMessage(nextPage.value)
  //       .then((value) => pushLogic().model.value = value);
  // }
}
