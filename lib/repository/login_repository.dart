import 'package:dio/dio.dart';
import 'package:douban/base/base_data.dart';
import 'package:douban/network/Api.dart';
import 'package:douban/network/http_manager.dart';

class LoginRepository {

  static Future<BaseData> getVerficationCode(String phoneNum) async {
    Map<String, dynamic> result = await HttpManager.getInstance().request(
        Api.GET_VERIFICATION_CODE,
        baseUrl: Api.ACCOUNT_BASE_URL,
        data: {'telephone': phoneNum, 'type': "sms"},
        options: Options(method: "POST"));
    BaseData baseData = BaseData.fromJson(result);
    return baseData;
  }
}
