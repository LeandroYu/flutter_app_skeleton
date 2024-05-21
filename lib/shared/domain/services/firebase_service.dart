import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:flutter/foundation.dart';

class FirebaseService {
  FirebaseService({
    required this.crashlytics,
  });

  final FirebaseCrashlytics crashlytics;

  @visibleForTesting
  bool releaseMode = kReleaseMode;

  Future<void> initialize() async {
    _setCrashlytics();
  }

  static Future<void> configure() async {
    await Firebase.initializeApp();
  }

  void _setCrashlytics() {
    if (releaseMode) {
      FlutterError.onError = (FlutterErrorDetails errorDetails) {
        crashlytics.recordFlutterFatalError(errorDetails);
      };
      PlatformDispatcher.instance.onError = (Object error, StackTrace stack) {
        crashlytics.recordError(error, stack, fatal: true);
        return true;
      };
    }
  }
}
