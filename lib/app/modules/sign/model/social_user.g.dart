// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'social_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocialUser _$$_SocialUserFromJson(Map<String, dynamic> json) =>
    _$_SocialUser(
      loginType: json['loginType'] as String,
      loginKey: json['loginKey'] as String,
      nickName: json['nickName'] as String?,
      tel: json['tel'] as String?,
      email: json['email'] as String?,
      accessToken: json['accessToken'] as String,
    );

Map<String, dynamic> _$$_SocialUserToJson(_$_SocialUser instance) =>
    <String, dynamic>{
      'loginType': instance.loginType,
      'loginKey': instance.loginKey,
      'nickName': instance.nickName,
      'tel': instance.tel,
      'email': instance.email,
      'accessToken': instance.accessToken,
    };
