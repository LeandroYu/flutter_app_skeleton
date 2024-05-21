import 'package:equatable/equatable.dart';

class EnvironmentProperties extends Equatable {
  final String baseUrl;
  final String authUrl;
  final String authClientId;
  final String authClientSecret;

  const EnvironmentProperties({
    required this.baseUrl,
    required this.authUrl,
    required this.authClientId,
    required this.authClientSecret,
  });

  factory EnvironmentProperties.fromJson(Map<String, dynamic> json) => EnvironmentProperties(
        baseUrl: json['BASE_URL'],
        authUrl: json['AUTH_URL'],
        authClientId: json['AUTH_CLIENT_ID'],
        authClientSecret: json['AUTH_CLIENT_SECRET'],
      );

  factory EnvironmentProperties.empty() {
    return const EnvironmentProperties(baseUrl: '', authUrl: '', authClientId: '', authClientSecret: '');
  }

  @override
  List<Object?> get props => <Object?>[baseUrl, authUrl, authClientId, authClientSecret];
}
