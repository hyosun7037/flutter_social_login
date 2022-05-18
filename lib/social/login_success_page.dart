import 'package:flutter/material.dart';
import 'package:flutter_naver_login/flutter_naver_login.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:logger/logger.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({Key? key}) : super(key: key);
  // 로그아웃
  static logout() async {
    var socialCate = Get.arguments[1].toString();
    var logger = Logger();
    try {
      if(socialCate == 'kakao'){
         UserIdResponse kakaoLogout = await UserApi.instance.logout();
        logger.d(kakaoLogout);
      }else if(socialCate == 'naver'){
        var naverLogout = await FlutterNaverLogin.logOutAndDeleteToken();
        logger.d(naverLogout);
      }
      Get.back();
    } catch (err) {
      logger.d(err);
    }
  }
  @override
  Widget build(BuildContext context) {
    var user = Get.arguments[0].toString();
    
    return Scaffold(
      appBar: AppBar(title: const Text('환영합니다')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('$user 환영합니다.'),
          const ElevatedButton(onPressed:logout, child: Text('로그아웃하기'),)
          ],
        ),
      )
    );
  }
}