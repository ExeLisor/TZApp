import 'package:tzapp/features/posts/domain/entities/post.dart';
import 'package:tzapp/features/posts/domain/repositories/post_repository.dart';

class GetPosts {
  final PostRepository repository;

  GetPosts(this.repository);

  Future<List<Post>> call() async {
    try {
      return await repository.getPosts();
    } catch (_) {
      return await repository.getCachedPosts();
    }
  }
}
