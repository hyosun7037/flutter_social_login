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
        title: const Text('Social login')),
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 16),
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
              onPressed: (){},
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
    ));
  }
}