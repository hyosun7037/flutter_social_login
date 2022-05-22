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
  String get loginKey => throw _privateConstructorUsedError;
  String? get nickName => throw _privateConstructorUsedError;
  String? get tel => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get accessToken => throw _privateConstructorUsedError;

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
  $Res call(
      {String loginType,
      String loginKey,
      String? nickName,
      String? tel,
      String? email,
      String accessToken});
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
    Object? loginKey = freezed,
    Object? nickName = freezed,
    Object? tel = freezed,
    Object? email = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_value.copyWith(
      loginType: loginType == freezed
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String,
      loginKey: loginKey == freezed
          ? _value.loginKey
          : loginKey // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      tel: tel == freezed
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
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
  $Res call(
      {String loginType,
      String loginKey,
      String? nickName,
      String? tel,
      String? email,
      String accessToken});
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
    Object? loginKey = freezed,
    Object? nickName = freezed,
    Object? tel = freezed,
    Object? email = freezed,
    Object? accessToken = freezed,
  }) {
    return _then(_$_SocialUser(
      loginType: loginType == freezed
          ? _value.loginType
          : loginType // ignore: cast_nullable_to_non_nullable
              as String,
      loginKey: loginKey == freezed
          ? _value.loginKey
          : loginKey // ignore: cast_nullable_to_non_nullable
              as String,
      nickName: nickName == freezed
          ? _value.nickName
          : nickName // ignore: cast_nullable_to_non_nullable
              as String?,
      tel: tel == freezed
          ? _value.tel
          : tel // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      accessToken: accessToken == freezed
          ? _value.accessToken
          : accessToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocialUser implements _SocialUser {
  _$_SocialUser(
      {required this.loginType,
      required this.loginKey,
      this.nickName,
      this.tel,
      this.email,
      required this.accessToken});

  factory _$_SocialUser.fromJson(Map<String, dynamic> json) =>
      _$$_SocialUserFromJson(json);

  @override
  final String loginType;
  @override
  final String loginKey;
  @override
  final String? nickName;
  @override
  final String? tel;
  @override
  final String? email;
  @override
  final String accessToken;

  @override
  String toString() {
    return 'SocialUser(loginType: $loginType, loginKey: $loginKey, nickName: $nickName, tel: $tel, email: $email, accessToken: $accessToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocialUser &&
            const DeepCollectionEquality().equals(other.loginType, loginType) &&
            const DeepCollectionEquality().equals(other.loginKey, loginKey) &&
            const DeepCollectionEquality().equals(other.nickName, nickName) &&
            const DeepCollectionEquality().equals(other.tel, tel) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.accessToken, accessToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(loginType),
      const DeepCollectionEquality().hash(loginKey),
      const DeepCollectionEquality().hash(nickName),
      const DeepCollectionEquality().hash(tel),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(accessToken));

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
      required final String loginKey,
      final String? nickName,
      final String? tel,
      final String? email,
      required final String accessToken}) = _$_SocialUser;

  factory _SocialUser.fromJson(Map<String, dynamic> json) =
      _$_SocialUser.fromJson;

  @override
  String get loginType => throw _privateConstructorUsedError;
  @override
  String get loginKey => throw _privateConstructorUsedError;
  @override
  String? get nickName => throw _privateConstructorUsedError;
  @override
  String? get tel => throw _privateConstructorUsedError;
  @override
  String? get email => throw _privateConstructorUsedError;
  @override
  String get accessToken => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SocialUserCopyWith<_$_SocialUser> get copyWith =>
      throw _privateConstructorUsedError;
}
