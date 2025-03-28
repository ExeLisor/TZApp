import 'package:tzapp/export.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final hiveService = HiveService();
  await hiveService.init();
  getIt.registerSingleton(hiveService);

  final dio = Dio()
    ..options.connectTimeout = const Duration(seconds: 30)
    ..interceptors.add(LogInterceptor(
      requestHeader: false,
      requestBody: false,
      responseHeader: false,
      error: true,
    ));

  final themeDataSource = ThemeLocalDataSource();
  await themeDataSource.init();
  getIt.registerSingleton<ThemeLocalDataSource>(themeDataSource);

  getIt.registerSingleton<ThemeRepository>(
    ThemeRepositoryImpl(getIt<ThemeLocalDataSource>()),
  );

  getIt.registerSingleton<GetTheme>(GetTheme(getIt<ThemeRepository>()));
  getIt.registerSingleton<SaveTheme>(SaveTheme(getIt<ThemeRepository>()));

  getIt.registerFactory<ThemeBloc>(
    () => ThemeBloc(
      getTheme: getIt<GetTheme>(),
      saveTheme: getIt<SaveTheme>(),
    ),
  );

  getIt.registerSingleton(PostApiService(dio));

  getIt.registerSingleton(PostRemoteDataSource(getIt<PostApiService>()));
  getIt.registerSingleton(PostLocalDataSource(getIt<HiveService>()));

  getIt.registerSingleton<PostRepositoryImpl>(PostRepositoryImpl(
    remoteSource: getIt<PostRemoteDataSource>(),
    localSource: getIt<PostLocalDataSource>(),
  ));

  getIt.registerSingleton<GetPosts>(GetPosts(getIt<PostRepositoryImpl>()));

  getIt.registerSingleton<GetPostById>(
    GetPostById(getIt<PostRepositoryImpl>()),
  );

  //blocs
  getIt.registerFactory<PostsBloc>(() => PostsBloc(getIt<GetPosts>()));
  getIt.registerFactory<PostDetailBloc>(
    () => PostDetailBloc(getPostById: getIt<GetPostById>()),
  );
}
