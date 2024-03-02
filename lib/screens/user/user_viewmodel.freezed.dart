// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_viewmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UserViewModelState {
  AsyncValue<User?> get userinfo => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserViewModelStateCopyWith<UserViewModelState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserViewModelStateCopyWith<$Res> {
  factory $UserViewModelStateCopyWith(
          UserViewModelState value, $Res Function(UserViewModelState) then) =
      _$UserViewModelStateCopyWithImpl<$Res, UserViewModelState>;
  @useResult
  $Res call({AsyncValue<User?> userinfo});
}

/// @nodoc
class _$UserViewModelStateCopyWithImpl<$Res, $Val extends UserViewModelState>
    implements $UserViewModelStateCopyWith<$Res> {
  _$UserViewModelStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userinfo = null,
  }) {
    return _then(_value.copyWith(
      userinfo: null == userinfo
          ? _value.userinfo
          : userinfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<User?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserViewModelStateImplCopyWith<$Res>
    implements $UserViewModelStateCopyWith<$Res> {
  factory _$$UserViewModelStateImplCopyWith(_$UserViewModelStateImpl value,
          $Res Function(_$UserViewModelStateImpl) then) =
      __$$UserViewModelStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AsyncValue<User?> userinfo});
}

/// @nodoc
class __$$UserViewModelStateImplCopyWithImpl<$Res>
    extends _$UserViewModelStateCopyWithImpl<$Res, _$UserViewModelStateImpl>
    implements _$$UserViewModelStateImplCopyWith<$Res> {
  __$$UserViewModelStateImplCopyWithImpl(_$UserViewModelStateImpl _value,
      $Res Function(_$UserViewModelStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userinfo = null,
  }) {
    return _then(_$UserViewModelStateImpl(
      userinfo: null == userinfo
          ? _value.userinfo
          : userinfo // ignore: cast_nullable_to_non_nullable
              as AsyncValue<User?>,
    ));
  }
}

/// @nodoc

class _$UserViewModelStateImpl implements _UserViewModelState {
  _$UserViewModelStateImpl({this.userinfo = const AsyncValue.loading()});

  @override
  @JsonKey()
  final AsyncValue<User?> userinfo;

  @override
  String toString() {
    return 'UserViewModelState(userinfo: $userinfo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserViewModelStateImpl &&
            (identical(other.userinfo, userinfo) ||
                other.userinfo == userinfo));
  }

  @override
  int get hashCode => Object.hash(runtimeType, userinfo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserViewModelStateImplCopyWith<_$UserViewModelStateImpl> get copyWith =>
      __$$UserViewModelStateImplCopyWithImpl<_$UserViewModelStateImpl>(
          this, _$identity);
}

abstract class _UserViewModelState implements UserViewModelState {
  factory _UserViewModelState({final AsyncValue<User?> userinfo}) =
      _$UserViewModelStateImpl;

  @override
  AsyncValue<User?> get userinfo;
  @override
  @JsonKey(ignore: true)
  _$$UserViewModelStateImplCopyWith<_$UserViewModelStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
