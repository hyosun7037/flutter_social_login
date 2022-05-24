import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/controller/social_login_controller.dart';
import 'package:kakao_test/app/widget/cirble_btn.dart';
import 'package:kakao_test/pages/first_page.dart';
import 'package:kakao_test/widget/close_app_bar.dart';

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
                 Expanded(
                 child:Align(
                   alignment: FractionalOffset.bottomCenter,
                   child:
                   ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  minimumSize: Size(double.infinity, 60)),
                  onPressed:() async{
                       try {
                         await _auth.createUserWithEmailAndPassword(
                           email: email, password: password);
                           Get.snackbar('회원가입완료', '아이디' + email + '비밀번호 :'+  password, duration: Duration(seconds: 5));
                       } on FirebaseAuthException catch (e) {
                         Get.snackbar('에러', e.message.toString());
                       }
                     },
                  child:  CircleBtn(
                    borderRadius: 50,
                    onPressed: () => Get.to(SignUpPage()),
                    btnText: '마더스 시작하기',
                    btnColor: Colors.teal,
                    btnTextColor: Colors.white,
              ),
                  ))
                )
                ],
              ),
            ),
          );
        }
      )
    );
  }
}
