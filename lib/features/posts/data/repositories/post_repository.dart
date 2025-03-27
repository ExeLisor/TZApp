import 'package:tzapp/features/posts/data/models/post_model.dart';
import 'package:tzapp/features/posts/data/sources/post_local_source.dart';
import 'package:tzapp/features/posts/data/sources/post_remote_source.dart';
import 'package:tzapp/features/posts/domain/entities/post.dart';
import 'package:tzapp/features/posts/domain/repositories/post_repository.dart';

class PostRepositoryImpl implements PostRepository {
  final PostRemoteDataSource remoteSource;
  final PostLocalDataSource localSource;

  PostRepositoryImpl({
    required this.remoteSource,
    required this.localSource,
  });

  @override
  Future<List<Post>> getPosts() async {
    try {
      final models = await remoteSource.getPosts();
      final modelsEntities = models.map(_convertToEntity).toList();
      await cachePosts(modelsEntities);
      return modelsEntities;
    } catch (e) {
      final cachedModels = await getCachedPosts();
      if (cachedModels.isNotEmpty) return cachedModels;
      rethrow;
    }
  }

  @override
  Future<void> cachePosts(List<Post> posts) async {
    final models = posts.map(_convertToModel).toList();
    await localSource.cachePosts(models);
  }

  @override
  Future<List<Post>> getCachedPosts() async {
    final models = localSource.getCachedPosts();
    if (models == null) return [];
    return models.map(_convertToEntity).toList();
  }

  Post _convertToEntity(PostModel model) {
    return Post(
      id: model.id,
      title: model.title,
      body: model.body,
    );
  }

  PostModel _convertToModel(Post post) {
    return PostModel(
      id: post.id,
      title: post.title,
      body: post.body,
    );
  }
}
