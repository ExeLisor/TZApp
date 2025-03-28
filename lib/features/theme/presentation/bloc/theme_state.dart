part of 'theme_bloc.dart';

@freezed
class ThemeState with _$ThemeState {
  const factory ThemeState.themeInitial() = ThemeInitial;
  const factory ThemeState.themeLoading() = ThemeLoading;
  const factory ThemeState.themeLoaded(String themeMode) = ThemeLoaded;
  const factory ThemeState.themeError(String message) = ThemeError;
}
