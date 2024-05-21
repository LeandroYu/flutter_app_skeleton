import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import 'local_secure_storage.dart';

class LocalSecureStorageAdapter implements LocalSecureStorage {
  LocalSecureStorageAdapter({required this.storage});
  final FlutterSecureStorage storage;

  @override
  Future<void> clear() async {
    await storage.deleteAll();
  }

  @override
  Future<void> delete(String key) async {
    await storage.delete(key: key);
  }

  @override
  Future<void> store(String key, dynamic value) async {
    await storage.write(key: key, value: value);
  }

  @override
  Future<String?> read(String key) async {
    return await storage.read(key: key);
  }
}
