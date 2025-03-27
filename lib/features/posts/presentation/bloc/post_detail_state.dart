part of 'post_detail_bloc.dart';

@freezed
class PostDetailState with _$PostDetailState {
  const factory PostDetailState.initial() = Initial;
  const factory PostDetailState.loading() = Loading;
  const factory PostDetailState.loaded(Post post) = Loaded;
  const factory PostDetailState.error(String message) = Error;
  const factory PostDetailState.notFound() = NotFound;
}
