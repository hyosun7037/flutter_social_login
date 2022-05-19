import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_test/data/model/socialUser.dart';
import 'package:kakao_test/social/login_success_page.dart';
import 'package:logger/logger.dart';

class SocialLoginController extends GetxController{ 
  final kakaoUser = SocialUser().obs;
  var logger = Logger();

  Future kakaologin() async{
  try {
      OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
      // 로그인 성공 후 페이지 이동
      try {
          User user = await UserApi.instance.me();
          Get.to(const LoginSuccessPage(), arguments: [user.kakaoAccount?.profile?.nickname, 'kakao']);
          logger.d(user);
          logger.d('카카오토큰 : $token');
        } catch (err) {
          logger.d(err);
        }
    } catch (err) {
      logger.d(err);
    }
    kakaoUser.update((val) { 
      logger.d(val);
    }); // person의 현재값을 불러오는 메서드
  }

  Future naverLogin() async{
    try {
      NaverLoginResult res = await FlutterNaverLogin.logIn();
      NaverAccessToken token = await FlutterNaverLogin.currentAccessToken;
      logger.d('네이버 로그인 성공 : $res');
      logger.d('네이버토큰 : $token');
      Get.to(const LoginSuccessPage(), arguments: [res.account.name, 'naver']);
    } catch (err) {
      logger.d(err);
    }
  }
}