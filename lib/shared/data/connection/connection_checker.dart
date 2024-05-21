
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

abstract class ConnectionCheckerClient {
  Future<bool> hasConnection();
  Stream<InternetStatus> get onStatusChanged;
}
