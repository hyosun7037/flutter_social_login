import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
        progressBarRatio: 2/6),
      backgroundColor: Color(0xffffffff),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Form(
            key: _formKey,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 50),
                  Text(
                    '기본정보를 입력해주세요',
                    style: TextStyle(fontSize: 23),
                  ),
                  SizedBox(height: 50),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 70,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      onChanged: (val){
                        email = val.toString().trim();
                      },
                      textAlign: TextAlign.center,
                      
                  )),
                  SizedBox(height: screenHeight * .025),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 70,
                    child: TextFormField(
                      obscureText: true,
                      validator: (val){
                        if(val!.isEmpty){
                          return "비밀번호를 입력주세요";
                        }
                      },
                      onChanged: (val){
                        password = val;
                      },
                      textAlign: TextAlign.center,
                      
                  )),
                 Expanded(
                 child:Align(
                   alignment: FractionalOffset.bottomCenter,
                   child:
                   GestureDetector(
                     onTap: () async{
                       try {
                         await _auth.createUserWithEmailAndPassword(
                           email: email, password: password);
                           Get.snackbar('로그인', '아이디' + email + '비밀번호 :'+  password, duration: Duration(seconds: 5));
                       } on FirebaseAuthException catch (e) {
                         Get.snackbar('에러', e.message.toString());
                       }
                     },
                  child: Text('다음', style: TextStyle(fontSize: 18))))
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
