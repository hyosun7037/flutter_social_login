import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_flutter_sdk/kakao_flutter_sdk.dart';
import 'package:kakao_test/app/modules/on_boarding/page/on_boarding_page.dart';
import 'package:kakao_test/firebase_options.dart';
import 'package:kakao_test/app/modules/sign/page/social_login_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).whenComplete(() => print('Firebase Init'));
  KakaoSdk.init(
    nativeAppKey: 'a6480419190f4a986e28128381e029f4', 
    javaScriptAppKey: 'b4c7296efb916c1f10a7b4c980f61ead');
    runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'SocialLogin',
      home:OnBoardingPage(),
    );
  }
}