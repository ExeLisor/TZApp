// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PostDetailEvent {
  int get id;

  /// Create a copy of PostDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PostDetailEventCopyWith<PostDetailEvent> get copyWith =>
      _$PostDetailEventCopyWithImpl<PostDetailEvent>(
          this as PostDetailEvent, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PostDetailEvent &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'PostDetailEvent(id: $id)';
  }
}

/// @nodoc
abstract mixin class $PostDetailEventCopyWith<$Res> {
  factory $PostDetailEventCopyWith(
          PostDetailEvent value, $Res Function(PostDetailEvent) _then) =
      _$PostDetailEventCopyWithImpl;
  @useResult
  $Res call({int id});
}

/// @nodoc
class _$PostDetailEventCopyWithImpl<$Res>
    implements $PostDetailEventCopyWith<$Res> {
  _$PostDetailEventCopyWithImpl(this._self, this._then);

  final PostDetailEvent _self;
  final $Res Function(PostDetailEvent) _then;

  /// Create a copy of PostDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _Fetch implements PostDetailEvent {
  const _Fetch(this.id);

  @override
  final int id;

  /// Create a copy of PostDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FetchCopyWith<_Fetch> get copyWith =>
      __$FetchCopyWithImpl<_Fetch>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Fetch &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'PostDetailEvent.fetch(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$FetchCopyWith<$Res>
    implements $PostDetailEventCopyWith<$Res> {
  factory _$FetchCopyWith(_Fetch value, $Res Function(_Fetch) _then) =
      __$FetchCopyWithImpl;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$FetchCopyWithImpl<$Res> implements _$FetchCopyWith<$Res> {
  __$FetchCopyWithImpl(this._self, this._then);

  final _Fetch _self;
  final $Res Function(_Fetch) _then;

  /// Create a copy of PostDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_Fetch(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _Refresh implements PostDetailEvent {
  const _Refresh(this.id);

  @override
  final int id;

  /// Create a copy of PostDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RefreshCopyWith<_Refresh> get copyWith =>
      __$RefreshCopyWithImpl<_Refresh>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Refresh &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  @override
  String toString() {
    return 'PostDetailEvent.refresh(id: $id)';
  }
}

/// @nodoc
abstract mixin class _$RefreshCopyWith<$Res>
    implements $PostDetailEventCopyWith<$Res> {
  factory _$RefreshCopyWith(_Refresh value, $Res Function(_Refresh) _then) =
      __$RefreshCopyWithImpl;
  @override
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$RefreshCopyWithImpl<$Res> implements _$RefreshCopyWith<$Res> {
  __$RefreshCopyWithImpl(this._self, this._then);

  final _Refresh _self;
  final $Res Function(_Refresh) _then;

  /// Create a copy of PostDetailEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
  }) {
    return _then(_Refresh(
      null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
mixin _$PostDetailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PostDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostDetailState()';
  }
}

/// @nodoc
class $PostDetailStateCopyWith<$Res> {
  $PostDetailStateCopyWith(
      PostDetailState _, $Res Function(PostDetailState) __);
}

/// @nodoc

class Initial implements PostDetailState {
  const Initial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostDetailState.initial()';
  }
}

/// @nodoc

class Loading implements PostDetailState {
  const Loading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostDetailState.loading()';
  }
}

/// @nodoc

class Loaded implements PostDetailState {
  const Loaded(this.post);

  final Post post;

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Loaded &&
            (identical(other.post, post) || other.post == post));
  }

  @override
  int get hashCode => Object.hash(runtimeType, post);

  @override
  String toString() {
    return 'PostDetailState.loaded(post: $post)';
  }
}

/// @nodoc
abstract mixin class $LoadedCopyWith<$Res>
    implements $PostDetailStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) _then) =
      _$LoadedCopyWithImpl;
  @useResult
  $Res call({Post post});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(this._self, this._then);

  final Loaded _self;
  final $Res Function(Loaded) _then;

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? post = null,
  }) {
    return _then(Loaded(
      null == post
          ? _self.post
          : post // ignore: cast_nullable_to_non_nullable
              as Post,
    ));
  }
}

/// @nodoc

class Error implements PostDetailState {
  const Error(this.message);

  final String message;

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Error &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'PostDetailState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res>
    implements $PostDetailStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) =
      _$ErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

  /// Create a copy of PostDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(Error(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class NotFound implements PostDetailState {
  const NotFound();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is NotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PostDetailState.notFound()';
  }
}

// dart format on
