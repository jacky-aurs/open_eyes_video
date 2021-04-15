import 'package:get_storage/get_storage.dart';
class LocalStorage{
  static LocalStorage _init;

  LocalStorage getInstance(){
    if(_init==null){
      _init = new LocalStorage();
    }
    return _init;
  }

  ///保存数据
  static saveData(String key,String value) async{
    final localStoage = GetStorage();
    localStoage.write(key, value);
  }

  ///获取数据
  static getData(String key) async{
    final localStoage = GetStorage();
    localStoage.read(key);
  }


}