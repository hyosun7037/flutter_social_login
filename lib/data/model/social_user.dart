import 'package:freezed_annotation/freezed_annotation.dart';

part 'social_user.freezed.dart';
part 'social_user.g.dart';

@freezed
class SocialUser with _$SocialUser {
    factory SocialUser({
        required String loginType,
        required String userName,
        required String email,
    }) = _SocialUser;

    factory SocialUser.fromJson(Map<String, dynamic> json) => _$SocialUserFromJson(json);
}
