import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/page/sign_in_page.dart';
import 'package:kakao_test/app/modules/sign/page/sign_up_terms_page.dart';
import 'package:kakao_test/app/widget/cirble_btn.dart';
import '../controller/social_login_controller.dart';
class SocialLoginPage extends StatelessWidget {
const SocialLoginPage({Key? key}) : super(key: key);
 @override
  Widget build(BuildContext context) {
    final SocialLoginController socialLoginController = Get.put(SocialLoginController());
    return GetBuilder<SocialLoginController>(
      init: SocialLoginController(),
      builder: (_) => 
        Scaffold(
        body: SafeArea(
          minimum: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
          Expanded(
            flex: 2,
            child: Container( 
              height: 250,
              width: 250,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                shape: BoxShape.circle
              ),
              child: Text('메인사진'),
            ),
          ),
          Expanded(
            flex: 1,
            child: Text.rich(
              TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: '나를 위한 맞춤케어 \n 마더스\n',
                    style: TextStyle(fontSize: 20),
                  ),
                  TextSpan(
                    text: '\n지금 가입하고 2주동안 \n 무료로 이용하세요',
                    style: TextStyle(fontSize: 20)
                  )
                ]
              ),
              textAlign: TextAlign.center,
            ),
          ),
          CircleBtn(
              socialLoginController: socialLoginController,
              borderRadius: 50,
              onPressed: () => {socialLoginController.kakaologin()},
              btnText: '카카오로 시작하기',
              btnColor: Colors.yellow,
              btnTextColor: Colors.black
              ),
          const SizedBox(height: 10),
          CircleBtn(
              socialLoginController: socialLoginController,
              borderRadius: 50,
              onPressed: () => {socialLoginController.naverLogin()},
              btnText: '네이버로 시작하기',
              btnColor: Colors.green,
              btnTextColor: Colors.white,
              ),
          const SizedBox(height: 10),
          CircleBtn(
              socialLoginController: socialLoginController,
              borderRadius: 50,
              onPressed: () => Get.to(SignInPage()),
              btnText: '이메일로 시작하기',
              btnColor: Colors.teal,
              btnTextColor: Colors.white,
              ),
          ],
        ),
      ),
    ));
  }
}