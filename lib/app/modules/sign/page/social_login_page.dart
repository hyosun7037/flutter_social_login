import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_test/app/modules/sign/model/social_user.dart';
import 'package:kakao_test/app/modules/sign/page/login_success_page.dart';
import 'package:kakao_test/app/modules/sign/repository/user_repository.dart';
import 'package:kakao_test/social/social_login_page.dart';
import 'package:logger/logger.dart';

class SocialLoginController extends GetxController{ 
  static SocialLoginController get to => Get.find();
  var logger = Logger();
  SocialUser? socialUser = null;


  Future kakaologin() async{
  try {
      OAuthToken token = await UserApi.instance.loginWithKakaoAccount();
      try {
          User user = await UserApi.instance.me();
          // 추가 동의항목 
          List<String> scopes = [];
          if (user.kakaoAccount?.emailNeedsAgreement == true) {
            scopes.add('account_email');
          };
          if (scopes.length > 0) {
          print('사용자에게 추가 동의 받아야 하는 항목이 있습니다');
          };
          OAuthToken token;
          try {
            token = await UserApi.instance.loginWithNewScopes(scopes);
            print('현재 사용자가 동의한 동의 항목: ${token.scopes}');
          } catch (error) {
            print('추가 동의 요청 실패 $error');
            return;
          }

          // 사용자 정보 재요청
          try {
            User user = await UserApi.instance.me();
            print('사용자 정보 요청 성공'
                '\n회원번호: ${user.id}'
                '\n닉네임: ${user.kakaoAccount?.profile?.nickname}'
                '\전화번호: ${user.kakaoAccount?.phoneNumber}'
                '\n이메일: ${user.kakaoAccount?.email}'
                );
          } catch (error) {
            print('사용자 정보 요청 실패 $error');
          };
          socialUser = SocialUser(
            loginType:'kakao', 
            accessToken: token.accessToken.toString(),
            loginKey: user.id.toString(),
            nickName: user.kakaoAccount?.profile?.nickname.toString(), 
            tel: user.kakaoAccount?.phoneNumber.toString(),
            email: user.kakaoAccount?.email.toString());
          print('카카오로그인 성공');
          // 로그인
          UserRepository.getInstance.socialLogin(socialUser!
          ).then((value) => logger.d(value.body));
          Get.to(LoginSuccessPage(), arguments: [user.kakaoAccount?.profile?.nickname.toString(), 'kakao']);
            return socialUser;
        } catch (err) {
          logger.d(err);
        }
    } catch (err) {
      logger.d(err);
    }
  }

  Future naverLogin() async{
    try {
      NaverLoginResult res = await FlutterNaverLogin.logIn();
      NaverAccessToken token = await FlutterNaverLogin.currentAccessToken;
      logger.d('네이버토큰 : $token');
      socialUser = SocialUser(
        accessToken: token.accessToken.toString(),
        loginType: "naver", 
        loginKey: res.account.id,
        nickName: res.account.name, 
        tel: res.account.mobile,
        email: res.account.email);
      print('네이버 아이디 저장 성공');
      logger.d(socialUser);
      Get.to(LoginSuccessPage(), arguments: [socialUser?.nickName, 'naver']);
    } catch (err) {
      logger.d(err);
    }
  }

    Future logout() async {
    var logger = Logger();
    try {
      if(socialUser?.loginType == 'kakao'){
         UserIdResponse kakaoLogout = await UserApi.instance.logout();
        logger.d(kakaoLogout);
      }else if(socialUser?.loginType == 'naver'){
        var naverLogout = await FlutterNaverLogin.logOutAndDeleteToken();
        logger.d(naverLogout);
      }
      Get.offAll(() => SocialLoginPage());
    } catch (err) {
      logger.d(err);
    }
  }
}