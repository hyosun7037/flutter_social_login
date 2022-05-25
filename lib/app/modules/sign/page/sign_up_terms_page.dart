import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/page/sign_%08up_page.dart';
import 'package:kakao_test/app/modules/sign/page/sign_in_page.dart';
import 'package:kakao_test/app/modules/sign/page/social_login_page.dart';
import 'package:kakao_test/app/widget/circle_btn.dart';

import '../../../widget/close_app_bar.dart';
bool _isChecked = false;
class SignUpTermsPage extends StatelessWidget {
  const SignUpTermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CloseAppbar(
        backPress: () => Get.to(SocialLoginPage()),
        progressBarRatio: 1/5,
        ),
      body: LayoutBuilder(
        builder: (context, constraints) => GestureDetector(
          onTap: (){
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Container(
              height: constraints.maxHeight,
              padding:const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:[
                SizedBox(height: constraints.minHeight + 30),
                Text('마더스에 오신걸 환영합니다!', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25, color:Colors.teal)),
                SizedBox(height: constraints.minHeight + 5),
                Text('나를 위한 맞춤 케어', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20, color:Colors.lightGreen)),
                SizedBox(height: MediaQuery.of(context).size.height * 0.25),
                Spacer(flex: 2),
                Row(
                  children: [
                    Icon(Icons.check_box, color: Colors.grey),
                    GestureDetector(
                      onTap: (){},
                      child: Text.rich(
                        TextSpan(
                          text: ' 전체동의',)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_box, color: Colors.grey),
                    GestureDetector(
                      onTap: (){},
                      child: Text.rich(
                        TextSpan(
                          text: ' 이용약관 및 개인정보 처리방침에 동의(필수)',)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.check_box, color: Colors.grey),
                    GestureDetector(
                      onTap: (){},
                      child: Text.rich(
                        TextSpan(
                          text: ' 맞춤 운동정보 제공 및 알림 수신에 동의(선택)',)
                      ),
                    )
                  ],
                ),
                SizedBox(height: 30),
                CircleBtn(
                  onPressed: () => Get.to(SignUpPage()), 
                  btnColor: Colors.teal, 
                  btnTextColor: Colors.white,
                  btnText: '본인인증',
                  borderRadius: 50,
                  padding: EdgeInsets.all(20)),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}