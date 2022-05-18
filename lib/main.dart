import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_test/social/Social_login_page.dart';
void main() {
  KakaoSdk.init(
    nativeAppKey: 'a6480419190f4a986e28128381e029f4', 
    javaScriptAppKey: 'b4c7296efb916c1f10a7b4c980f61ead');
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'SocialLogin',
      home:SocialLoginPage(),
    );
  }
}