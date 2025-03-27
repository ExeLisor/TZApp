import 'package:tzapp/features/posts/data/models/post_model.dart';

import '../services/hive_service.dart';

class PostLocalDataSource {
  final HiveService _hiveService;

  PostLocalDataSource(this._hiveService);

  Future<void> cachePosts(List<PostModel> posts) async =>
      await _hiveService.cachePosts(posts);

  List<PostModel>? getCachedPosts() => _hiveService.getCachedPosts();
}
