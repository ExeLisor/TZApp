import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tzapp/features/posts/domain/entities/post.dart';
import 'package:tzapp/features/posts/domain/use_cases/get_posts.dart';

part 'posts_event.dart';
part 'posts_state.dart';
part 'posts_bloc.freezed.dart';

class PostsBloc extends Bloc<PostsEvent, PostsState> {
  final GetPosts getPosts;

  PostsBloc(this.getPosts) : super(const PostsState.initial()) {
    on<_Fetch>(_onFetch);
    on<_Refresh>(_onRefresh);
  }

  Future<void> _onFetch(_Fetch event, Emitter<PostsState> emit) async {
    try {
      emit(const PostsState.loading());
      final posts = await getPosts.call();

      if (posts.isEmpty) {
        emit(const PostsState.empty());
      } else {
        emit(PostsState.loaded(posts));
      }
    } catch (e) {
      emit(PostsState.error(e.toString()));
    }
  }

  Future<void> _onRefresh(_Refresh event, Emitter<PostsState> emit) async {
    try {
      emit(const PostsState.loading());
      final posts = await getPosts.call();
      await Future.delayed(const Duration(milliseconds: 500));
      emit(PostsState.loaded(posts));
    } catch (e) {
      emit(PostsState.error(e.toString()));
    }
  }
}
