import 'package:tzapp/features/posts/data/models/post_model.dart';
import 'package:tzapp/features/posts/data/sources/post_local_source.dart';

class PostRepository {
  final PostLocalDataSource localDataSource;

  PostRepository({required this.localDataSource});

  Future<List<PostModel>> getCachedPosts() async {
    return localDataSource.getCachedPosts();
  }

  Future<void> cachePosts(List<PostModel> posts) async {
    await localDataSource.cachePosts(posts);
  }
}
