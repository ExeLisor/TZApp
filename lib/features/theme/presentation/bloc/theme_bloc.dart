import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/use_cases/get_theme.dart';
import '../../domain/use_cases/save_theme.dart';

part 'theme_event.dart';
part 'theme_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  final GetTheme getTheme;
  final SaveTheme saveTheme;

  ThemeBloc({required this.getTheme, required this.saveTheme})
      : super(const ThemeInitial()) {
    on<_Load>(_onLoadTheme);
    on<_Change>(_onChangeTheme);
  }

  Future<void> _onLoadTheme(_Load event, Emitter<ThemeState> emit) async {
    emit(const ThemeLoading());
    try {
      final theme = await getTheme();
      emit(ThemeLoaded(theme ?? 'system'));
    } catch (e) {
      emit(ThemeError(e.toString()));
    }
  }

  Future<void> _onChangeTheme(_Change event, Emitter<ThemeState> emit) async {
    try {
      emit(const ThemeLoading());
      await saveTheme(event.themeMode);
      emit(ThemeLoaded(event.themeMode));
    } catch (e) {
      emit(ThemeError(e.toString()));
    }
  }
}
