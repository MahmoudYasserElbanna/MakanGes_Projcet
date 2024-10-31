import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  Future<Response> post({
    required Map<String, dynamic> body,
    required String url,
    required String contentType,
    String? token,
    Map<String, String>? headers,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        contentType: contentType,
        headers: headers ?? {'Authorization': 'Bearer $token'},
      ),
    );
    return response;
  }
}
