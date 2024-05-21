import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:get_it/get_it.dart';

import '../../shared/dependencies/dependency_injector.dart';
import '../../shared/domain/services/firebase_service.dart';

class FirebaseDI implements DependencyInjector {
  @override
  Future<void> inject() async {
    await FirebaseService.configure();

    FirebaseService service = FirebaseService(
      crashlytics: FirebaseCrashlytics.instance,
    );

    await service.initialize();
    GetIt.I.registerLazySingleton<FirebaseService>(() => service);
  }
}
