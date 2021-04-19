import 'package:douban/page/notice/push/push_message_model_entity.dart';
import 'package:douban/repository/mine_repository.dart';
import 'package:get/get.dart';

class pushLogic extends GetxController {
  Rx<PushMessageModelEntity> model = null.obs;

  void getData() {
    MineRespository.getMessage(pushLogic().model.value)
        .then((value) => pushLogic().model.value = value);
  }
}
