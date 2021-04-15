import 'data_helper.dart';
import 'http_manager.dart';
import 'address.dart';

class Api {
  ///示例请求
  static request(String param) {
    var params = DataHelper.getBaseMap();
    params['param'] = param;
    return HttpManager.getInstance().get(Address.ACCOUNT_BASE_URL, params: params);
  }
}
