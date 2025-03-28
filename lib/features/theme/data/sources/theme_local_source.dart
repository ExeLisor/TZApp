import 'package:hive/hive.dart';

class ThemeLocalDataSource {
  static const String _boxName = 'theme_prefs';
  static const String _key = 'theme_mode';

  Future<void> init() async {
    await Hive.openBox(_boxName);
  }

  Future<void> saveTheme(String themeMode) async {
    final box = Hive.box(_boxName);
    await box.put(_key, themeMode);
  }

  Future<String?> getTheme() async {
    final box = Hive.box(_boxName);
    return await box.get(_key);
  }
}
