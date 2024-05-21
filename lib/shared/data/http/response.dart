import 'package:equatable/equatable.dart';

class ClientResponse extends Equatable {
  final dynamic data;
  final Map<String, List<String>> headers;
  final int statusCode;

  const ClientResponse({
    required this.statusCode,
    this.headers = const <String, List<String>>{},
    this.data,
  });

  @override
  List<Object?> get props => <Object?>[data, headers, statusCode];
}
