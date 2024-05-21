import 'package:dio/dio.dart';

import 'http_client.dart';
import 'response.dart';

class DioAdapter implements HttpClient {
  DioAdapter({required Dio dio}) : _dio = dio;
  final Dio _dio;

  ClientResponse _handleResponse(Response<dynamic> response) {
    return ClientResponse(
      statusCode: response.statusCode!,
      data: response.data,
      headers: response.headers.map,
    );
  }

  @override
  Future<ClientResponse> get(String path,
      {Map<String, dynamic>? headers}) async {
    Response<dynamic> response = await _dio.get(
      path,
      options: Options(headers: headers),
    );

    return _handleResponse(response);
  }

  @override
  Future<ClientResponse> post(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers}) async {
    Response<dynamic> response = await _dio.post(
      path,
      data: data,
      options: Options(
        headers: headers,
      ),
    );

    return _handleResponse(response);
  }

  @override
  Future<ClientResponse> put(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers}) async {
    Response<dynamic> response = await _dio.put(
      path,
      data: data,
      options: Options(
        headers: headers,
      ),
    );

    return _handleResponse(response);
  }

  @override
  Future<ClientResponse> delete(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers}) async {
    Response<dynamic> response = await _dio.delete(
      path,
      data: data,
      options: Options(
        headers: headers,
      ),
    );

    return _handleResponse(response);
  }

  @override
  Map<String, dynamic> requestHeader({String? token}) {
    if (token != null) {
      return {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer $token',
      };
    } else {
      return {
        'Content-Type': 'application/json',
      };
    }
  }
}
