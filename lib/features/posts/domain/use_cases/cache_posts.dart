import 'package:tzapp/features/posts/domain/entities/post.dart';
import 'package:tzapp/features/posts/domain/repositories/post_repository.dart';

class CachePosts {
  final PostRepository repository;

  CachePosts(this.repository);

  Future<List<Post>> call() async {
    return await repository.getPosts();
  }
}
