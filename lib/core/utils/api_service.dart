import 'package:dio/dio.dart';

class ApiService {
  Dio dio = Dio();

  Future<Response> post({
    required Map<String, dynamic> body,
    required String url,
    required String token,
    String? contentType,
  }) async {
    var response = await dio.post(
      url,
      data: body,
      options: Options(
        headers: {
          'Content-Type': contentType,
          'Authorization': 'Bearer $token',
        },
      ),
    );
    return response;
  }
}
