import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/controller/social_login_controller.dart';

class SocialLoginPage extends StatelessWidget {
const SocialLoginPage({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    final SocialLoginController socialLoginController = Get.put(SocialLoginController());
    return GetBuilder<SocialLoginController>(
      init: SocialLoginController(),
      builder: (_) => 
        Scaffold(
        appBar: AppBar(
        title: const Text('로그인테스트')),
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CupertinoButton(
                onPressed: () => socialLoginController.kakaologin(),
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
              onPressed: () => socialLoginController.naverLogin(),
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
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CupertinoButton(
                onPressed: (){},
                child: const Text(
                  '이메일로 회원가입',
                  style: TextStyle(
                    fontSize: 15,
                    color:Colors.black
                    ),
                  ),
                ),
                SizedBox(child: Text('|', style: TextStyle(fontSize: 16),),),
                CupertinoButton(
                onPressed: (){},
                child: const Text(
                  '이메일로 로그인',
                  style: TextStyle(
                    fontSize: 15,
                    color:Colors.black
                    ),
                  ),
                ),
              ],
            ),
            ),
            
          ],
        ),
      ),
    ));
  }
}