import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/controller/social_login_controller.dart';
import 'package:kakao_test/app/modules/home/page/main_page.dart';
import 'package:logger/logger.dart';

class LoginSuccessPage extends StatelessWidget {
final SocialLoginController socialLoginController = Get.put(SocialLoginController());
var logger = Logger();
  
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: SocialLoginController(),
      builder: (_) => Scaffold(
          appBar: AppBar(title: const Text('환영합니다'), 
          actions: [IconButton(onPressed: socialLoginController.logout, icon:Icon(Icons.logout))]),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
               Expanded(
                 child: Align(alignment: FractionalOffset.bottomCenter,
                 child: Text('${socialLoginController.socialUser?.nickName}님! 환영합니다.', 
                 style: TextStyle(fontSize: 20),),)),
               Expanded(
                 child:Align(
                   alignment: FractionalOffset.bottomCenter,
                   child:
                   ElevatedButton(
                  style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 70)),
                  onPressed:() => Get.to(MainPage()), 
                  child: Text('서비스 시작하기', style: TextStyle(fontSize: 18))))
               )
              ],
            ),
          )
        )
    );
  }
}