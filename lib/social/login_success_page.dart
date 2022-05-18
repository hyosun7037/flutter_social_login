import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:logger/logger.dart';

class LoginSuccessPage extends StatelessWidget {
  const LoginSuccessPage({Key? key}) : super(key: key);
  // 카카오 로그아웃
  static _kakaoLogout() async {
    var logger = Logger();
    try {
      UserIdResponse logoutInfo = await UserApi.instance.logout();
      logger.d('로그아웃 + $logoutInfo');
      Get.back();
    } catch (err) {
      logger.d(err);
    }
  }
  @override
  Widget build(BuildContext context) {
    var value = Get.arguments.toString();
    return Scaffold(
      appBar: AppBar(title: const Text('환영합니다')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text('$value님 환영합니다.'),
          const ElevatedButton(onPressed:_kakaoLogout, child: Text('로그아웃하기'),)
          ],
        ),
      )
    );
  }
}