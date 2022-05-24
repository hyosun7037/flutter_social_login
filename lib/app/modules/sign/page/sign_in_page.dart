import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/page/sign_up_terms_page.dart';
import 'package:kakao_test/app/widget/cirble_btn.dart';
import 'package:kakao_test/app/widget/close_app_bar.dart';
import 'package:kakao_test/pages/first_page.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key:key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final _auth = FirebaseAuth.instance;
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CloseAppbar(
        backPress: () => Get.back(),
        progressBarRatio: 1/6),
      backgroundColor: Color(0xffffffff),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Form(
            key: _formKey,
            child: Container(
              padding:const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
              child: Column(
                children: <Widget>[
                  SizedBox(height: 50),
                  Text.rich(
                    TextSpan(
                      text: '마더스',
                      style: TextStyle(fontSize: 20)
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 70,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: '이메일을 입력해주세요'),
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (val){
                        email = val.toString().trim();
                      },
                      textAlign: TextAlign.left,

                  )),
                  SizedBox(height: screenHeight * .025),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 70,
                    child: TextFormField(
                      decoration: InputDecoration(labelText: '비밀번호를 입력해주세요'),
                      obscureText: true,
                      validator: (val){
                        if(val!.isEmpty){
                          return "비밀번호를 입력주세요";
                        }
                      },
                      onChanged: (val){
                        password = val;
                      },
                      textAlign: TextAlign.left,

                  )),
                  SizedBox(height: screenHeight * .025),
                    CircleBtn(
                    borderRadius: 50,
                    onPressed: () async{
                       try {
                         FirebaseAuth.instance.currentUser?.sendEmailVerification();
                         print('이미 가입된 회원');
                         Get.to(FirstPage());
                       } catch (e) {
                         print(e.toString());
                      }},
                    btnText: '마더스 시작하기',
                    btnColor: Colors.teal,
                    btnTextColor: Colors.white,
                  ),
                ],
              ),
            ),
          );
        }
      )
    );
  }
}