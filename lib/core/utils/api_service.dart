import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  Future<Response> post({
    required Map<String, dynamic> body,
    required String url,
    String? token,
    String? contentType,
    Map<String, String>? headers,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        headers: headers ??
            {
              'Content-Type': contentType,
              'Authorization': 'Bearer $token',
            },
      ),
    );
    return response;
  }
}
