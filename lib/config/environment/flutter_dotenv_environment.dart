import 'package:flutter/foundation.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'environment.dart';
import 'environment_properties.dart';

class FlutterDotenvEnvironment implements Environment<EnvironmentProperties> {
  EnvironmentProperties? _properties;
  final DotEnv _dotEnv;

  FlutterDotenvEnvironment({required DotEnv dotEnv}) : _dotEnv = dotEnv;

  @override
  Future<void> init() async {
    String filename = 'env/.env.prod';

    if (kDebugMode) {
      filename = 'env/.env.dev';
    }

    await _dotEnv.load(fileName: filename);

    _properties = EnvironmentProperties.fromJson(_dotEnv.env);
  }

  @override
  EnvironmentProperties? get properties => _properties;
}
