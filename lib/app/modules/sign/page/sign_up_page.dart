import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/controller/social_login_controller.dart';
import 'package:kakao_test/app/modules/sign/page/sigin_rec_first_page.dart';
import 'package:kakao_test/app/widget/circle_btn.dart';
import 'package:kakao_test/app/widget/close_app_bar.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({Key? key}) : super(key:key);
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
        progressBarRatio: 2/5),
      backgroundColor: Color(0xffffffff),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                padding:const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children:[
                    SizedBox(height: 50),
                    Text.rich(
                      TextSpan(
                        text: '기본정보를 입력해주세요',
                        style: TextStyle(fontSize: 20)
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: MediaQuery.of(context).size.width - 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '이메일',
                          hintText: '예시)1234@motherth.com',
                          hintStyle: TextStyle(color:Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey)),
                        keyboardType: TextInputType.emailAddress,
                        validator: (val){
                          if(val!.isEmpty){
                            return "이메일을 입력해주세요";
                          }
                          return null;
                        },
                        onChanged: (val){
                          email = val.toString().trim();
                        },
                        textAlign: TextAlign.left,
                    )),
                    SizedBox(height: screenHeight * .025),
                    Container(
                      width: MediaQuery.of(context).size.width - 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '비밀번호',
                          hintText: '8자 이상 입력해주세요',
                          hintStyle: TextStyle(color:Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey)),
                        obscureText: true,
                        validator: (val){
                          if(val!.isEmpty){
                            return "비밀번호를 입력해주세요";
                          }
                          return null;
                        },
                        onChanged: (val){
                          password = val;
                        },
                        textAlign: TextAlign.left,
                    )),
                    SizedBox(height: screenHeight * .025),
                    Container(
                      width: MediaQuery.of(context).size.width - 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '이름',
                          hintText: '이름을 입력해주세요',
                          hintStyle: TextStyle(color:Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey)),
                        obscureText: true,
                        validator: (val){
                          if(val!.isEmpty){
                            return "이름를 입력해주세요";
                          }
                          return null;
                        },
                        onChanged: (val){
                          password = val;
                        },
                        textAlign: TextAlign.left,
                    )),
                    SizedBox(height: screenHeight * .025),
                    Container(
                      width: MediaQuery.of(context).size.width - 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '휴대폰 번호',
                          hintText: '-를 제외한 숫자만 입력해주세요',
                          hintStyle: TextStyle(color:Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey)),
                        obscureText: true,
                        validator: (val){
                          if(val!.isEmpty){
                            return "휴대폰번호를 입력해주세요";
                          }
                          return null;
                        },
                        onChanged: (val){
                          password = val;
                        },
                        textAlign: TextAlign.left,
                    )),
                    SizedBox(height: screenHeight * .025),
                    Container(
                      width: MediaQuery.of(context).size.width - 70,
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: '인증번호',
                          hintText: '인증번호를 입력해주세요',
                          hintStyle: TextStyle(color:Colors.grey),
                          labelStyle: TextStyle(color: Colors.grey)),
                        obscureText: true,
                        validator: (val){
                          if(val!.isEmpty){
                            return "인증번호를 입력해주세요";
                          }
                          return null;
                        },
                        onChanged: (val){
                          password = val;
                        },
                        textAlign: TextAlign.left,
                    )),
                  SizedBox(height: screenHeight * .025),
                  SizedBox(height: 30),
                  CircleBtn(
                            onPressed: () async{
                               try {
                                  await _auth.createUserWithEmailAndPassword(
                                    email: email, password: password);
                                    Get.snackbar('회원가입완료', '아이디' + email + '비밀번호 :'+  password, duration: Duration(seconds: 5));
                                    // 회원가입 완료시
                                    // Get.to(SignInRecFirstPage());
                                } on FirebaseAuthException catch (e) {
                                  Get.snackbar('에러', e.message.toString());
                              }
                              Get.to(SignInRecFirstPage());
                            },
                            btnColor: Colors.teal, 
                            btnTextColor: Colors.white,
                            btnText: '마더스 시작하기',
                            borderRadius: 50,
                            padding: EdgeInsets.all(20)),
                  ],
                ),
              ),
            ),
          );
        }
      )
    );
  }
}
