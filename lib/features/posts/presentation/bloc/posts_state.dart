part of 'posts_bloc.dart';

@freezed
class PostsState with _$PostsState {
  const factory PostsState.initial() = PostInitial;
  const factory PostsState.loading() = PostLoading;
  const factory PostsState.loaded(List<Post> posts) = PostLoaded;
  const factory PostsState.error(String message) = PostError;
  const factory PostsState.empty() = PostEmpty;
}
