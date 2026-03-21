import 'package:dio/dio.dart';

class DioService {
  final Dio dio = Dio();

  Future<Response<dynamic>> post({
    required String url,
    required dynamic data,
    required String token,
    String? contentType,
  }) async {
    var response = await dio.post<dynamic>(
      url,
      data: data,
      options: Options(
        contentType: contentType ?? 'application/json',
        headers: {'Authorization': 'Bearer $token'},
      ),
    );
    return response;
  }
}
