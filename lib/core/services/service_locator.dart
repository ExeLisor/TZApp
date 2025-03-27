import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import 'package:tzapp/features/posts/data/services/hive_service.dart';

import 'package:tzapp/features/posts/data/services/post_api_service.dart';
import 'package:tzapp/features/posts/data/sources/post_local_source.dart';
import 'package:tzapp/features/posts/data/sources/post_remote_source.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Hive
  final hiveService = HiveService();
  await hiveService.init();
  getIt.registerSingleton(hiveService);

  final dio = Dio()
    ..interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      error: true,
    ));

  // Retrofit
  getIt.registerSingleton(PostApiService(dio));

  // Регистрация зависимостей
  getIt.registerSingleton(PostRemoteDataSource(getIt<PostApiService>()));
  getIt.registerSingleton(PostLocalDataSource(getIt<HiveService>()));
}
