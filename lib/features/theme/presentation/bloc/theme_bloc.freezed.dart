// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'theme_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ThemeEvent {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ThemeEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeEvent()';
  }
}

/// @nodoc
class $ThemeEventCopyWith<$Res> {
  $ThemeEventCopyWith(ThemeEvent _, $Res Function(ThemeEvent) __);
}

/// @nodoc

class _Load implements ThemeEvent {
  const _Load();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Load);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeEvent.load()';
  }
}

/// @nodoc

class _Change implements ThemeEvent {
  const _Change(this.themeMode);

  final String themeMode;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangeCopyWith<_Change> get copyWith =>
      __$ChangeCopyWithImpl<_Change>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Change &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @override
  String toString() {
    return 'ThemeEvent.change(themeMode: $themeMode)';
  }
}

/// @nodoc
abstract mixin class _$ChangeCopyWith<$Res>
    implements $ThemeEventCopyWith<$Res> {
  factory _$ChangeCopyWith(_Change value, $Res Function(_Change) _then) =
      __$ChangeCopyWithImpl;
  @useResult
  $Res call({String themeMode});
}

/// @nodoc
class __$ChangeCopyWithImpl<$Res> implements _$ChangeCopyWith<$Res> {
  __$ChangeCopyWithImpl(this._self, this._then);

  final _Change _self;
  final $Res Function(_Change) _then;

  /// Create a copy of ThemeEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(_Change(
      null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
mixin _$ThemeState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ThemeState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeState()';
  }
}

/// @nodoc
class $ThemeStateCopyWith<$Res> {
  $ThemeStateCopyWith(ThemeState _, $Res Function(ThemeState) __);
}

/// @nodoc

class ThemeInitial implements ThemeState {
  const ThemeInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ThemeInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeState.themeInitial()';
  }
}

/// @nodoc

class ThemeLoading implements ThemeState {
  const ThemeLoading();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ThemeLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'ThemeState.themeLoading()';
  }
}

/// @nodoc

class ThemeLoaded implements ThemeState {
  const ThemeLoaded(this.themeMode);

  final String themeMode;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeLoadedCopyWith<ThemeLoaded> get copyWith =>
      _$ThemeLoadedCopyWithImpl<ThemeLoaded>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeLoaded &&
            (identical(other.themeMode, themeMode) ||
                other.themeMode == themeMode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, themeMode);

  @override
  String toString() {
    return 'ThemeState.themeLoaded(themeMode: $themeMode)';
  }
}

/// @nodoc
abstract mixin class $ThemeLoadedCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory $ThemeLoadedCopyWith(
          ThemeLoaded value, $Res Function(ThemeLoaded) _then) =
      _$ThemeLoadedCopyWithImpl;
  @useResult
  $Res call({String themeMode});
}

/// @nodoc
class _$ThemeLoadedCopyWithImpl<$Res> implements $ThemeLoadedCopyWith<$Res> {
  _$ThemeLoadedCopyWithImpl(this._self, this._then);

  final ThemeLoaded _self;
  final $Res Function(ThemeLoaded) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? themeMode = null,
  }) {
    return _then(ThemeLoaded(
      null == themeMode
          ? _self.themeMode
          : themeMode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class ThemeError implements ThemeState {
  const ThemeError(this.message);

  final String message;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ThemeErrorCopyWith<ThemeError> get copyWith =>
      _$ThemeErrorCopyWithImpl<ThemeError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ThemeError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'ThemeState.themeError(message: $message)';
  }
}

/// @nodoc
abstract mixin class $ThemeErrorCopyWith<$Res>
    implements $ThemeStateCopyWith<$Res> {
  factory $ThemeErrorCopyWith(
          ThemeError value, $Res Function(ThemeError) _then) =
      _$ThemeErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$ThemeErrorCopyWithImpl<$Res> implements $ThemeErrorCopyWith<$Res> {
  _$ThemeErrorCopyWithImpl(this._self, this._then);

  final ThemeError _self;
  final $Res Function(ThemeError) _then;

  /// Create a copy of ThemeState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(ThemeError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
