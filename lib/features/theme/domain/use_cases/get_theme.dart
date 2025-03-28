import '../repositories/theme_repository.dart';

class GetTheme {
  final ThemeRepository repository;

  GetTheme(this.repository);

  Future<String?> call() => repository.getSavedTheme();
}
