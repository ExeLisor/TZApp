import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

import 'package:tzapp/features/posts/data/services/post_api_service.dart';
import 'package:tzapp/features/posts/data/sources/post_local_source.dart';
import 'package:tzapp/features/posts/data/sources/post_remote_source.dart';

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  // Hive
  final dir = await getApplicationDocumentsDirectory();
  Hive.init(dir.path);
  final postLocalDataSource = PostLocalDataSource();
  await postLocalDataSource.init();

  // Dio с интерцепторами
  final dio = Dio()
    ..interceptors.add(LogInterceptor(
      request: true,
      responseBody: true,
      error: true,
    ));

  // Retrofit
  final postApiService = PostApiService(dio);

  // Регистрация зависимостей
  getIt.registerSingleton<PostLocalDataSource>(postLocalDataSource);
  getIt.registerSingleton<PostApiService>(postApiService);
  getIt.registerSingleton<PostRemoteDataSource>(
      PostRemoteDataSource(getIt<PostApiService>()));
}
