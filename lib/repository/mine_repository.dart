import 'package:dio/dio.dart';
import 'package:douban/Model/PushModel.dart';
import 'package:douban/network/Api.dart';
import 'package:douban/network/http_manager.dart';

class MineRespository {
  ///获取官方通知消息
  // static Future<PushMessageModelEntity> getMessage(PushMessageModelEntity model) async {
  //   var nextPageUrl = Address.MESSAGE;
  //   if (model != null) {
  //     nextPageUrl = model.nextPageUrl;
  //   }
  //   Map<String, dynamic> params = {};
  //   var result = await HttpManager.getInstance().get(nextPageUrl, params: params, withLoading: true);
  //   PushMessageModelEntity messageModel = PushMessageModelEntity().fromJson(result);
  //   print(messageModel.messageList);
  //   print(messageModel.nextPageUrl);
  //   return messageModel;
  // }

  static Future<PushModel> getMessage(String nextPageUrl) async {
    Map<String, dynamic> result = await HttpManager.getInstance().request(
        Api.MESSAGE,
        targetUrl: nextPageUrl,
        options: Options(method: "GET"));
    PushModel pushMessageModelEntity = PushModel.fromJson(result);
    return pushMessageModelEntity;
  }
}
