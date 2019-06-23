import 'dart:io';

import 'package:dio/dio.dart';
import 'package:yuque/utils/storage.dart';

Dio dio = new Dio(BaseOptions(
  baseUrl: 'https://www.yuque.com/api/v2/',
  connectTimeout: 5000,
  receiveTimeout: 100000,
  headers: {
    "User-Agent": "flutter desktop",
  },
  contentType: ContentType.parse("application/json"),
));

class http {
  const http();

  static request() async {
    Storage storage = await Storage.getInstance();

    dio.interceptors.add(InterceptorsWrapper(
      onRequest: (RequestOptions options) async {
        var token = await storage.getString('auth-token');

        var headers = {
          "X-Auth-Token": token,
        };

        options.headers.addAll(headers);
        return options;
      },
    ));
  }

  static get(
    String path, {
    Map<String, dynamic> queryParameters,
    Options options,
    CancelToken cancelToken,
    ProgressCallback onReceiveProgress,
  }) async {
    await http.request();
    return dio.get(
      path,
      queryParameters: queryParameters,
      options: options,
      cancelToken: cancelToken,
      onReceiveProgress: onReceiveProgress,
    );
  }
}
