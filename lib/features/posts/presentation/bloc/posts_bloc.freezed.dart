// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostsEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostsEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostsEvent()';
  }
}

/// @nodoc
class $PostsEventCopyWith<$Res> {
  $PostsEventCopyWith(PostsEvent _, $Res Function(PostsEvent) __);
}

/// @nodoc

class _Fetch implements PostsEvent {
  const _Fetch();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Fetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostsEvent.fetch()';
  }
}

/// @nodoc

class _Refresh implements PostsEvent {
  const _Refresh();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Refresh);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostsEvent.refresh()';
  }
}

/// @nodoc
mixin _$PostsState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostsState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostsState()';
  }
}

/// @nodoc
class $PostsStateCopyWith<$Res> {
  $PostsStateCopyWith(PostsState _, $Res Function(PostsState) __);
}

/// @nodoc

class PostInitial implements PostsState {
  const PostInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostsState.initial()';
  }
}

/// @nodoc

class PostLoading implements PostsState {
  const PostLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostsState.loading()';
  }
}

/// @nodoc

class PostLoaded implements PostsState {
  const PostLoaded(final List<Post> posts) : _posts = posts;

  final List<Post> _posts;
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostLoadedCopyWith<PostLoaded> get copyWith =>
      _$PostLoadedCopyWithImpl<PostLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostLoaded &&
            const DeepCollectionEquality().equals(other._posts, _posts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_posts));

  @override
  String toString() {
    return 'PostsState.loaded(posts: $posts)';
  }
}

/// @nodoc
abstract mixin class $PostLoadedCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory $PostLoadedCopyWith(
          PostLoaded value, $Res Function(PostLoaded) _then) =
      _$PostLoadedCopyWithImpl;
  @useResult
  $Res call({List<Post> posts});
}

/// @nodoc
class _$PostLoadedCopyWithImpl<$Res> implements $PostLoadedCopyWith<$Res> {
  _$PostLoadedCopyWithImpl(this._self, this._then);

  final PostLoaded _self;
  final $Res Function(PostLoaded) _then;

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? posts = null,
  }) {
    return _then(PostLoaded(
      null == posts
          ? _self._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
    ));
  }
}

/// @nodoc

class PostError implements PostsState {
  const PostError(this.message);

  final String message;

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostErrorCopyWith<PostError> get copyWith =>
      _$PostErrorCopyWithImpl<PostError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PostsState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $PostErrorCopyWith<$Res>
    implements $PostsStateCopyWith<$Res> {
  factory $PostErrorCopyWith(PostError value, $Res Function(PostError) _then) =
      _$PostErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$PostErrorCopyWithImpl<$Res> implements $PostErrorCopyWith<$Res> {
  _$PostErrorCopyWithImpl(this._self, this._then);

  final PostError _self;
  final $Res Function(PostError) _then;

  /// Create a copy of PostsState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(PostError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class PostEmpty implements PostsState {
  const PostEmpty();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostEmpty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostsState.empty()';
  }
}

// dart format on
