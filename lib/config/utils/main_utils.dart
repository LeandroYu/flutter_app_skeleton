import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:intl/intl.dart';

import '../../shared/data/storage/secure_storage/local_secure_storage.dart';
import '../../shared/data/storage/secure_storage/local_secure_storage_adapter.dart';
import '../../shared/dependencies/dependency_injector.dart';
import '../../shared/dependencies/dependency_manager.dart';
import '../app_bloc_observer.dart';

// import '../dependencies/firebase_di.dart';i

import '../dependencies/main_di.dart';
import '../dependencies/shared_di.dart';

class MainUtils {
  static Future<void> configApp() async {
    Intl.defaultLocale = 'pt_BR';
    Bloc.observer = AppBlocObserver();
    FlutterSecureStorage flutterSecureStorage = const FlutterSecureStorage();
    LocalSecureStorage secureStorage =
        LocalSecureStorageAdapter(storage: flutterSecureStorage);

    await DependencyManager.injectDependencies(
      sequentialDependencyInjectors: <DependencyInjector>[
        MainDI(dotEnv: dotenv, secureStorage: secureStorage),
        SharedDI(),
        // FirebaseDI(),
      ],
      parallelDependencyInjectors: <DependencyInjector>[],
    );
  }

  static Future<void> setDeviceOrientation() async {
    await SystemChrome.setPreferredOrientations(
      <DeviceOrientation>[DeviceOrientation.portraitUp],
    );
  }
}
