import 'dart:async';

import 'package:bloc/bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tzapp/features/posts/domain/entities/post.dart';
import 'package:tzapp/features/posts/domain/use_cases/get_post_by_id.dart';

part 'post_detail_event.dart';
part 'post_detail_state.dart';
part 'post_detail_bloc.freezed.dart';

class PostDetailBloc extends Bloc<PostDetailEvent, PostDetailState> {
  final GetPostById getPostById;

  PostDetailBloc({required this.getPostById})
      : super(const PostDetailState.initial()) {
    on<_Fetch>(_onFetch);
    on<_Refresh>(_onRefresh);
  }

  Future<void> _onFetch(_Fetch event, Emitter<PostDetailState> emit) async {
    await _fetchPost(event.id, emit);
  }

  Future<void> _onRefresh(_Refresh event, Emitter<PostDetailState> emit) async {
    emit(const PostDetailState.loading());
    await _fetchPost(event.id, emit);
  }

  Future<void> _fetchPost(int id, Emitter<PostDetailState> emit) async {
    try {
      final post = await getPostById(id);

      emit(PostDetailState.loaded(post));
    } catch (e) {
      if (e.toString().contains('not found')) {
        emit(const PostDetailState.notFound());
      } else {
        emit(PostDetailState.error(e.toString()));
      }
    }
  }
}
