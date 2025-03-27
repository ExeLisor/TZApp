import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:tzapp/features/posts/data/models/post_model.dart';

part 'post_api_service.g.dart';

@RestApi(baseUrl: 'https://jsonplaceholder.typicode.com/')
abstract class PostApiService {
  factory PostApiService(Dio dio) = _PostApiService;

  @GET('/posts')
  Future<List<PostModel>> getPosts();

  @GET('/posts/{id}')
  Future<PostModel> getPostById(@Path('id') int id);
}
