import 'package:tzapp/features/posts/domain/entities/post.dart';

import '../repositories/post_repository.dart';

class GetPostById {
  final PostRepository repository;

  GetPostById(this.repository);

  Future<Post> call(int id) async => await repository.getPostById(id);
}
