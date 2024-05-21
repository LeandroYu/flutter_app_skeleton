import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtil {
  SharedPreferencesUtil._();

  //CREATE SHARED PREFERENCES INTANCE
  static Future<SharedPreferences> getInstance() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs;
  }

  //WRITE SHARED PREFERENCE DATA
  static Future<void> writeInt(
      {required String key, required int value}) async {
    await getInstance().then((prefs) async => await prefs.setInt(key, value));
  }

  static Future<void> writeDouble(
      {required String key, required double value}) async {
    await getInstance()
        .then((prefs) async => await prefs.setDouble(key, value));
  }

  static Future<void> writeString(
      {required String key, required String value}) async {
    await getInstance()
        .then((prefs) async => await prefs.setString(key, value));
  }

  static Future<void> writeBool(
      {required String key, required bool value}) async {
    await getInstance().then((prefs) async => await prefs.setBool(key, value));
  }

  static Future<void> writeList(
      {required String key, required List<String> value}) async {
    await getInstance().then((prefs) => prefs.setStringList(key, value));
  }

  //READ SHARED PREFERENCE DATA
  static Future<int?> readInt({required String key}) async {
    return await getInstance().then((prefs) => prefs.getInt(key));
  }

  static Future<double?> readDouble({required String key}) async {
    return await getInstance().then((prefs) => prefs.getDouble(key));
  }

  static Future<String?> readString({required String key}) async {
    return await getInstance().then((prefs) => prefs.getString(key));
  }

  static Future<bool?> readBool({required String key}) async {
    return await getInstance().then((prefs) => prefs.getBool(key));
  }

  static Future<List<String>?> readList({required String key}) async {
    return await getInstance().then((prefs) => prefs.getStringList(key));
  }

  //REMOVE SHARED PREFERENCE DATA
  static Future<void> removeData({required String key}) async {
    await getInstance().then((prefs) => prefs.remove(key));
  }

  static Future<void> reloadData() async {
    await getInstance().then((prefs) => prefs.reload());
  }
}
