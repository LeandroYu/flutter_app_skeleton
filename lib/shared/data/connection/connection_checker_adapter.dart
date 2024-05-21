import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import 'connection_checker.dart';

class ConnectionCheckerClientImpl implements ConnectionCheckerClient {
  @override
  Future<bool> hasConnection() async {
    return await InternetConnection().hasInternetAccess;
  }

  @override
  Stream<InternetStatus> get onStatusChanged => InternetConnection().onStatusChange;
}
