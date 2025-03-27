part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = Initial;
  const factory PostsState.loading() = Loading;
  const factory PostsState.loaded(List<Post> posts) = Loaded;
  const factory PostsState.error(String message) = Error;
  const factory PostsState.empty() = Empty;
}
