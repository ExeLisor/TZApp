import '../repositories/theme_repository.dart';

class SaveTheme {
  final ThemeRepository repository;

  SaveTheme(this.repository);

  Future<void> call(String themeMode) => repository.saveTheme(themeMode);
}
