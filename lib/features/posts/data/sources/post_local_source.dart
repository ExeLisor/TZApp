import 'dart:convert';

import 'package:hive/hive.dart';
import 'package:tzapp/features/posts/data/models/post_model.dart';

class PostLocalDataSource {
  static const String _postsKey = 'posts';
  late Box<String> _box;

  Future<void> init() async => _box = await Hive.openBox<String>('posts_box');

  Future<void> cachePosts(List<PostModel> posts) async {
    final jsonList = posts.map((post) => post.toJson()).toList();
    await _box.put(_postsKey, jsonEncode(jsonList));
  }

  List<PostModel> getCachedPosts() {
    final jsonString = _box.get(_postsKey);
    if (jsonString == null) return [];

    final jsonList = jsonDecode(jsonString) as List<dynamic>;
    return jsonList
        .map((json) => PostModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }

  Future<void> clearCache() async => await _box.delete(_postsKey);
}
