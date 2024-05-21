import 'response.dart';

abstract class HttpClient {
  Future<ClientResponse> get(String path, {Map<String, dynamic>? headers});
  Future<ClientResponse> post(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers});
  Future<ClientResponse> put(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers});
  Future<ClientResponse> delete(String path,
      {Map<String, dynamic>? data, Map<String, dynamic>? headers});
  Map<String, dynamic> requestHeader({String? token});
}
