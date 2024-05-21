import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import '../../shared/data/http/dio_adapter.dart';
import '../../shared/data/http/http_client.dart';
import '../../shared/data/storage/secure_storage/local_secure_storage.dart';
import '../../shared/dependencies/dependency_injector.dart';
import '../environment/environment.dart';
import '../environment/environment_manager.dart';
import '../environment/environment_properties.dart';

class MainDI implements DependencyInjector {
  const MainDI({
    required this.dotEnv,
    required this.secureStorage,
  });

  final DotEnv dotEnv;
  final LocalSecureStorage secureStorage;

  @override
  Future<void> inject() async {
    await _initEnvironment();
    await _initHttpClient();
  }

  Future<void> _initEnvironment() async {
    Environment<EnvironmentProperties> environment =
        await EnvironmentManager.loadEnvironment(dotEnv: dotEnv);

    GetIt.I.registerLazySingleton<EnvironmentProperties>(
      () => environment.properties ?? EnvironmentProperties.empty(),
    );

    GetIt.I.registerLazySingleton<LocalSecureStorage>(() => secureStorage);
  }

  Future<void> _initHttpClient() async {
    final Dio dio = Dio(
      BaseOptions(
        validateStatus: (_) => true,
      ),
    );

    GetIt.I.registerLazySingleton<HttpClient>(() => DioAdapter(dio: dio));
  }
}
