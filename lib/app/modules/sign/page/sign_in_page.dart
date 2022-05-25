import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/page/sign_%08up_page.dart';
import 'package:kakao_test/app/modules/sign/page/sign_up_terms_page.dart';
import 'package:kakao_test/app/widget/circle_btn.dart';
import 'package:kakao_test/app/widget/close_app_bar.dart';
import 'package:kakao_test/pages/main_page.dart';
import 'package:logger/logger.dart';

class SignInPage extends StatelessWidget {
  SignInPage({Key? key}) : super(key:key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: CloseAppbar(
        backPress: () => Get.back(),
        progressBarRatio: 0/6),
      backgroundColor: Color(0xffffffff),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Container(
                padding:const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 50),
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: '로그인\n',
                            style: TextStyle(fontSize: 23)
                          ),
                          TextSpan(
                            text: '나를 위한 맞춤 케어 마더스',
                            style: TextStyle(fontSize: 18)
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 50),
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 50,
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
                      width: MediaQuery.of(context).size.width - 50,
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
                    SizedBox(height: screenHeight * 0.05),
                      CircleBtn(
                      borderRadius: 50,
                      onPressed: () async{
                         try {
                           // final loginUser = FirebaseAuth.instance.currentUser?.sendEmailVerification();
                           if(email == ''){
                            Get.snackbar('이메일', '이메일을 입력해주세요');
                          }else if(password == ''){
                            Get.snackbar('비밀번호', '비밀번호를 입력해주세요');
                          }
                          UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                          email: email, password: password);
                           Get.to(MainPage());
                         } on FirebaseAuthException catch(e){
                           if(e.code == 'user-not-found'){
                             Get.snackbar('로그인에러', '사용자를 찾을 수 없음');
                           }else if(e.code == 'wrong-passoword'){
                             Get.snackbar('로그인에러', '비밀번호 오류');
                           }
                         }},
                      btnText: '마더스 시작하기',
                      btnColor: Colors.teal,
                      btnTextColor: Colors.white,
                      padding: EdgeInsets.all(20),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextBtn(text: '회원가입', textColor: Colors.black, onPressed: () => Get.to(SignUpTermsPage())),
                        const SizedBox(
                          height: 12,
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                        TextBtn(text: '아이디 찾기', textColor: Colors.black, onPressed: (){}),
                        const SizedBox(
                          height: 12,
                          child: VerticalDivider(
                            thickness: 1,
                            color: Colors.grey,
                          ),
                        ),
                        TextBtn(text: '비밀번호 찾기', textColor: Colors.black, onPressed: (){}),
                      ],
                    )
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

class TextBtn extends StatelessWidget {
  const TextBtn({
    required this.text,
    required this.textColor,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final Color textColor;
  final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Text(
        text, 
        style: TextStyle(color: Colors.black54, fontSize: 16)));
  }
}