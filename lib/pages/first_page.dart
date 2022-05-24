import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/controller/social_login_controller.dart';

class FirstPage extends StatelessWidget {
  FirstPage({Key? key}) : super(key: key);
  final SocialLoginController socialLoginController = Get.put(SocialLoginController());


  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        actions: [IconButton(onPressed: socialLoginController.logout, icon:Icon(Icons.logout))],
        title: const Text('첫번째 페이지')),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('첫번째 페이지')
            ],
          ),
        ),
      ));
  }
}