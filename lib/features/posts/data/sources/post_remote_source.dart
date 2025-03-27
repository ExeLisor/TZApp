import 'package:tzapp/features/posts/data/services/post_api_service.dart';

import '../models/post_model.dart';

class PostRemoteDataSource {
  final PostApiService apiService;

  PostRemoteDataSource(this.apiService);

  Future<List<PostModel>> fetchPosts() async {
    return await apiService.getPosts();
  }

  Future<PostModel> fetchPostById(int id) async {
    return await apiService.getPostById(id);
  }
}
