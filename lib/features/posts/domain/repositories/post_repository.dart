import 'package:tzapp/features/posts/domain/entities/post.dart';

abstract class PostRepository {
  Future<List<Post>> getPosts();
  Future<void> cachePosts(List<Post> posts);
  Future<List<Post>> getCachedPosts();
}
