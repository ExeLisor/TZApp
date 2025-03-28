import '../../domain/repositories/theme_repository.dart';
import '../sources/theme_local_source.dart';

class ThemeRepositoryImpl implements ThemeRepository {
  final ThemeLocalDataSource localDataSource;

  ThemeRepositoryImpl(this.localDataSource);

  @override
  Future<String?> getSavedTheme() => localDataSource.getTheme();

  @override
  Future<void> saveTheme(String themeMode) =>
      localDataSource.saveTheme(themeMode);
}
