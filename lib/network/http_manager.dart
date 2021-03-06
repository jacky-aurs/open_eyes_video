import 'dart:convert';
import 'dart:io';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:douban/network/Api.dart';
import 'package:douban/network/interceptor/common_parameter_interceptor.dart';
import 'package:douban/network/interceptor/response_interceptor.dart';
import 'package:douban/utils/string_util.dart';

class HttpManager {
  static const CONTENT_TYPE_JSON = "application/json";
  static const CONTENT_TYPE_FORM = "application/x-www-form-urlencoded";
  static const CONTENT_TYPE_IMAGE = "image/*";

  static HttpManager _instance;

  factory HttpManager.getInstance() => _getInstance();

  static _getInstance() {
    if (_instance == null) {
      _instance = HttpManager._internal();
    }
    return _instance;
  }

  Dio _dio;

  HttpManager._internal() {
    BaseOptions baseOptions = new BaseOptions(
        baseUrl: Api.BASE_URL,
        connectTimeout: 10000,
        receiveTimeout: 3000,
        headers: httpHeaders);

    _dio = Dio(baseOptions);
    _dio.interceptors.add(LogInterceptor(responseBody: true));
    _dio.interceptors.add(CommonParameterInterceptor());
    _dio.interceptors.add(ResponseInterceptors());

    ///设置代理
    // if (!AppUtil.isReleaseMode()) {
    //   (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //       (HttpClient client) {
    //     client.findProxy = (uri) {
    //       return "PROXY " + Proxy.HOST + ":" + Proxy.PORT;
    //     };
    //     client.badCertificateCallback =
    //         (X509Certificate cert, String host, int port) => true;
    //   };
    // }
  }

  Future<Map<String, dynamic>> request(String path,
      {baseUrl, targetUrl, data, options}) async {
    if (!StringUtil.isEmpty(targetUrl)) {
      path = targetUrl;
      _dio.options.baseUrl = "";
    } else {
      if (!StringUtil.isEmpty(baseUrl)) {
        _dio.options.baseUrl = baseUrl;
      } else {
        _dio.options.baseUrl = Api.BASE_URL;
      }
    }

    Response response;
    if (data is FormData) {
      response = await _dio.request(path, data: data, options: options);
    } else {
      response =
      await _dio.request(path, queryParameters: data, options: options);
    }

    if (response.data is Map) {
      return response.data;
    }
    return jsonDecode(response.data.toString());
  }
}

/// 自定义Header
Map<String, dynamic> httpHeaders = {
  "content-type": HttpManager.CONTENT_TYPE_FORM,
  "responseType": ResponseType.plain,
  'Charset': 'utf-8'
};
