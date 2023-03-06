import "package:dio/dio.dart";

class Client {
  static final Dio client = Dio();
  final baseUrl = "http://127.0.0.1:8000/"; // this is our UrL
}
