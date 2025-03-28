import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:tzapp/features/posts/data/repositories/post_repository.dart';

import 'package:tzapp/features/posts/data/services/hive_service.dart';

import 'package:tzapp/features/posts/data/services/post_api_service.dart';
import 'package:tzapp/features/posts/data/sources/post_local_source.dart';
import 'package:tzapp/features/posts/data/sources/post_remote_source.dart';

import 'package:tzapp/features/posts/domain/use_cases/get_post_by_id.dart';

import 'package:tzapp/features/posts/domain/use_cases/get_posts.dart';
import 'package:tzapp/features/posts/presentation/bloc/post_detail_bloc.dart';
import 'package:tzapp/features/posts/presentation/bloc/posts_bloc.dart';
import 'package:tzapp/features/theme/data/repositrories/theme_repository.dart';
import 'package:tzapp/features/theme/data/sources/theme_local_source.dart';
import 'package:tzapp/features/theme/domain/repositories/theme_repository.dart';
import 'package:tzapp/features/theme/domain/use_cases/get_theme.dart';
import 'package:tzapp/features/theme/domain/use_cases/save_theme.dart';
import 'package:tzapp/features/theme/presentation/bloc/theme_bloc.dart';

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
