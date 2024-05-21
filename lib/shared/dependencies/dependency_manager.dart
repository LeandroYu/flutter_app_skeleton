
import 'dependency_injector.dart';

class DependencyManager {
  static Future<void> injectDependencies({
    List<DependencyInjector>? sequentialDependencyInjectors,
    required List<DependencyInjector> parallelDependencyInjectors,
  }) async {
    if (sequentialDependencyInjectors != null) {
      for (DependencyInjector dependencyInjector in sequentialDependencyInjectors) {
        await dependencyInjector.inject();
      }
    }

    await Future.wait(
      parallelDependencyInjectors.map(
        (DependencyInjector dependencyInjector) => dependencyInjector.inject(),
      ),
    );
  }
}
