// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'social_user.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocialUser _$SocialUserFromJson(Map<String, dynamic> json) {
  return _SocialUser.fromJson(json);
}

/// @nodoc
mixin _$SocialUser {
  String get loginType => throw _privateConstructorUsedError;
  String get userName => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocialUserCopyWith<SocialUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialUserCopyWith<$Res> {
  factory $SocialUserCopyWith(
          SocialUser value, $Res Function(SocialUser) then) =
      _$SocialUserCopyWithImpl<$Res>;
  $Res call({String loginType, String userName, String email});
}

/// @nodoc
class _$SocialUserCopyWithImpl<$Res> implements $SocialUserCopyWith<$Res> {
  _$SocialUserCopyWithImpl(this._value, this._then);

  final SocialUser _value;
  // ignore: unused_field
  final $Res Function(SocialUser) _then;

  @override
  $Res call({
    Object? loginType = freezed,
    Object? userName = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      loginType: loginType == freezed
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SocialUserCopyWith<$Res>
    implements $SocialUserCopyWith<$Res> {
  factory _$$_SocialUserCopyWith(
          _$_SocialUser value, $Res Function(_$_SocialUser) then) =
      __$$_SocialUserCopyWithImpl<$Res>;
  @override
  $Res call({String loginType, String userName, String email});
}

/// @nodoc
class __$$_SocialUserCopyWithImpl<$Res> extends _$SocialUserCopyWithImpl<$Res>
    implements _$$_SocialUserCopyWith<$Res> {
  __$$_SocialUserCopyWithImpl(
      _$_SocialUser _value, $Res Function(_$_SocialUser) _then)
      : super(_value, (v) => _then(v as _$_SocialUser));

  @override
  _$_SocialUser get _value => super._value as _$_SocialUser;

  @override
  $Res call({
    Object? loginType = freezed,
    Object? userName = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_SocialUser(
      loginType: loginType == freezed
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String,
      userName: userName == freezed
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialUser implements _SocialUser {
  _$_SocialUser(
      {required this.loginType, required this.userName, required this.email});

  factory _$_SocialUser.fromJson(Map<String, dynamic> json) =>
      _$$_SocialUserFromJson(json);

  @override
  final String loginType;
  @override
  final String userName;
  @override
  final String email;

  @override
  String toString() {
    return 'SocialUser(loginType: $loginType, userName: $userName, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialUser &&
            const DeepCollectionEquality().equals(other.loginType, loginType) &&
            const DeepCollectionEquality().equals(other.userName, userName) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loginType),
      const DeepCollectionEquality().hash(userName),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$$_SocialUserCopyWith<_$_SocialUser> get copyWith =>
      __$$_SocialUserCopyWithImpl<_$_SocialUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocialUserToJson(this);
  }
}

abstract class _SocialUser implements SocialUser {
  factory _SocialUser(
      {required final String loginType,
      required final String userName,
      required final String email}) = _$_SocialUser;

  factory _SocialUser.fromJson(Map<String, dynamic> json) =
      _$_SocialUser.fromJson;

  @override
  String get loginType => throw _privateConstructorUsedError;
  @override
  String get userName => throw _privateConstructorUsedError;
  @override
  String get email => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SocialUserCopyWith<_$_SocialUser> get copyWith =>
      throw _privateConstructorUsedError;
}
