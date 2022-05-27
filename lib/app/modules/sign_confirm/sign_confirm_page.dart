import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/widget/circle_btn.dart';
import 'package:kakao_test/app/modules/home/page/main_page.dart';

class SignConfirmPage extends StatelessWidget {
  const SignConfirmPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('가입을 환영해요!', style: TextStyle(fontSize: 25),),
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  height: MediaQuery.of(context).size.height * 0.5,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    shape: BoxShape.circle,
                  ),
                ),
                Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: '(회원명)',
                      style: TextStyle(
                        fontSize: 20, 
                        color: Colors.teal, 
                        fontWeight: FontWeight.w500)
                    ),
                    TextSpan(
                      text: '님은 05/30일까지\n무료로 이용하실 수 있어요!\n\n',
                      style: TextStyle(
                        fontSize: 20)
                    ),
                  ])
                ),
                CircleBtn(
                  onPressed: () => Get.to(MainPage()), 
                  btnColor: Colors.teal, 
                  btnTextColor: Colors.white,
                  padding: EdgeInsets.all(20),
                  btnText: '체형정보 입력하기',
                  )
              ]),
          ),
        )),
    );
  }
}