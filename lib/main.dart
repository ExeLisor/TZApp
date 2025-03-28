import 'package:tzapp/export.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<ThemeBloc>()..add(const ThemeEvent.load()),
        ),
        BlocProvider(create: (_) => getIt<PostsBloc>()),
        BlocProvider(create: (_) => getIt<PostDetailBloc>()),
      ],
      child: BlocBuilder<ThemeBloc, ThemeState>(
        builder: (context, themeState) {
          return MaterialApp.router(
            debugShowCheckedModeBanner: false,
            routerConfig: _appRouter.config(),
            theme: ThemeData.light(useMaterial3: true),
            darkTheme: ThemeData.dark(useMaterial3: true),
            themeMode: () {
              if (themeState is ThemeLoaded) {
                return themeState.themeMode == 'dark'
                    ? ThemeMode.dark
                    : ThemeMode.light;
              }

              return ThemeMode.system;
            }(),
          );
        },
      ),
    );
  }
}
