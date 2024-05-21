import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'environment.dart';
import 'environment_properties.dart';
import 'flutter_dotenv_environment.dart';

class EnvironmentManager {
  static Future<Environment<EnvironmentProperties>> loadEnvironment({required DotEnv dotEnv}) async {
    final Environment<EnvironmentProperties> environment = FlutterDotenvEnvironment(dotEnv: dotEnv);
    await environment.init();
    return environment;
  }
}
