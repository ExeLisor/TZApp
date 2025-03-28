import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/theme_bloc.dart';

class ThemeSwitch extends StatelessWidget {
  const ThemeSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        final isDark = state is ThemeLoaded && state.themeMode == 'dark';
        return Switch(
          value: isDark,
          onChanged: (value) {
            context
                .read<ThemeBloc>()
                .add(ThemeEvent.change(value ? 'dark' : 'light'));
          },
          thumbIcon: WidgetStateProperty.resolveWith<Icon?>(
            (states) => Icon(isDark ? Icons.dark_mode : Icons.light_mode),
          ),
        );
      },
    );
  }
}
