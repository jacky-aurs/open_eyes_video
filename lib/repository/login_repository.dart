import 'package:douban/base/base_data.dart';
import 'package:douban/network/Address.dart';
import 'package:douban/network/http_manager.dart';

class LoginRepository {
  static Future<BaseData> getVerficationCode(String phoneNum) async {
    var params = {
      'phoneNum':phoneNum,
      'type': "sms"
    };
    var result = await HttpManager.getInstance(baseUrl: Address.ACCOUNT_BASE_URL)
        .post(Address.GET_VERIFICATION_CODE, params: params, withLoading: true);
    // BaseData baseData = BaseData.fromJson(result);
    // return baseData;
    print("获取到的结果${result}");
  }
}
