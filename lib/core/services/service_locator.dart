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

final getIt = GetIt.instance;

Future<void> setupLocator() async {
  final hiveService = HiveService();
  await hiveService.init();
  getIt.registerSingleton(hiveService);

  final dio = Dio()
    ..interceptors.add(LogInterceptor(
      request: true,
      error: true,
    ));

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
