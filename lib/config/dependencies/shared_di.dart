import 'package:get_it/get_it.dart';

import '../../shared/data/connection/connection_checker.dart';
import '../../shared/data/connection/connection_checker_adapter.dart';
import '../../shared/dependencies/dependency_injector.dart';

class SharedDI implements DependencyInjector {
  @override
  Future<void> inject() async {
    ConnectionCheckerClient connectionClient = ConnectionCheckerClientImpl();

    GetIt.I.registerLazySingleton<ConnectionCheckerClient>(() => connectionClient);
  }
}
