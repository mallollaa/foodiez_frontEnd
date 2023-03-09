import "package:dio/dio.dart";

class Client {
  static final Dio client =
      Dio(BaseOptions(baseUrl: 'http://127.0.0.1:8000/api'));
  // this is our UrL
}
