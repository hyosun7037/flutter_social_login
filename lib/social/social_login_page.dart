import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_test/social/login_success_page.dart';
import 'package:logger/logger.dart';

class SocialLoginPage extends StatefulWidget {
const SocialLoginPage({Key? key}) : super(key: key);

  @override
  State<SocialLoginPage> createState() => _SocialLoginPageState();
}
var logger = Logger();

class _SocialLoginPageState extends State<SocialLoginPage> {
  // 카카오 로그인
  static kakaoLogin() async {
    
    try {
      OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
      // 로그인 성공 후 페이지 이동
      try {
          User user = await UserApi.instance.me();
          Get.to(const LoginSuccessPage(), arguments: user.kakaoAccount?.profile?.nickname);
          logger.d(user);
          logger.d('카카오토큰 : $token');
        } catch (err) {
          logger.d(err);
        }
    } catch (err) {
      logger.d(err);
    }
  }
  

  // 네이버 로그인
  static naverLogin() async{
    try {
      NaverLoginResult res = await FlutterNaverLogin.logIn();
      NaverAccessToken token = await FlutterNaverLogin.currentAccessToken;
      logger.d('네이버 로그인 성공 : $res');
      logger.d('네이버토큰 : $token');
    } catch (err) {
      logger.d(err);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Social login')),
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const CupertinoButton(
              onPressed: kakaoLogin,
              color: Colors.yellow,
              child: Text(
                '카카오로 시작하기',
                style: TextStyle(
                  fontSize: 15,
                  color:Colors.black
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const CupertinoButton(
              onPressed: naverLogin,
              color: Colors.green,
              child: Text(
                '네이버로 시작하기',
                style: TextStyle(
                  fontSize: 15,
                  color:Colors.white
                  ),
                ),
              ),
            ),
          const SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CupertinoButton(
              onPressed: (){},
              color: Colors.black,
              child: const Text(
                '애플로 시작하기',
                style: TextStyle(
                  fontSize: 15,
                  color:Colors.white
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}