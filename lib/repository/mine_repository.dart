import 'package:douban/network/Address.dart';
import 'package:douban/network/http_manager.dart';
import 'package:douban/page/notice/push/push_message_model_entity.dart';

class MineRespository {
  ///获取官方通知消息
  static Future<PushMessageModelEntity> getMessage(PushMessageModelEntity model) async {
    var nextPageUrl = Address.MESSAGE;
    if (model != null) {
      nextPageUrl = model.nextPageUrl;
    }
    Map<String, dynamic> params = {};
    var result = await HttpManager().get(nextPageUrl, params: params, withLoading: true);
    PushMessageModelEntity messageModel = PushMessageModelEntity().fromJson(result);
    print(messageModel.messageList);
    print(messageModel.nextPageUrl);
    return messageModel;
  }
}
