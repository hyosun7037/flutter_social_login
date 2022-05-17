import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
class SocialLoginPage extends StatefulWidget {
  const SocialLoginPage({Key? key}) : super(key: key);

  @override
  State<SocialLoginPage> createState() => _SocialLoginPageState();
  
}

class _SocialLoginPageState extends State<SocialLoginPage> {
  void _kakaoButtonPressed() async {
    try {
      print('로그인시도');
      OAuthToken token = await UserApi.instance.loginWithKakaoTalk();
      print(token);
      print('카카오톡 로그인 성공 ${token}');
      try {
        User user = await UserApi.instance.me();
        print('회원번호 : ${user.id}, 닉네임 : ${user.kakaoAccount?.email}');
      } catch (e) {
        print('사용자 정보 요청 실패 ${e}');
        return;
      }
    } catch (e) {
      print(e);
    }
  }
  void _naverButtonPressed() async{
    NaverLoginResult res = await FlutterNaverLogin.logIn();
      print(res);
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
            child: CupertinoButton(
              onPressed: _kakaoButtonPressed,
              color: Colors.yellow,
              child: const Text(
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
            child: CupertinoButton(
              onPressed: _naverButtonPressed,
              color: Colors.green,
              child: const Text(
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