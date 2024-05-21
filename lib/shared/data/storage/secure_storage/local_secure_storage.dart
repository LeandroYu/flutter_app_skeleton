abstract class LocalSecureStorage {
  Future<void> store(String key, dynamic value);
  Future<String?> read(String key);
  Future<void> delete(String key);
  Future<void> clear();
}
