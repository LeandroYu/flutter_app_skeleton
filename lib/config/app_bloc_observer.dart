import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../shared/domain/services/firebase_service.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    if (kReleaseMode) {
      GetIt.I.get<FirebaseService>().crashlytics.recordError(error, stackTrace);
    }

    super.onError(bloc, error, stackTrace);
  }
}
