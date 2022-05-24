import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/page/sign_%08up_page.dart';
import 'package:kakao_test/widget/close_app_bar.dart';

class SignUpTermsPage extends StatelessWidget {
  const SignUpTermsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CloseAppbar(
        backPress: () => Get.back(),
        progressBarRatio: 1/6,
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
                children: [
                SizedBox(height: constraints.minHeight + 30),
                Text('마더스에 오신 걸 환영합니다.', style: TextStyle(fontWeight: FontWeight.w500, fontSize: 25, color:Colors.teal)),
                SizedBox(height: constraints.minHeight + 5),
                Text('나를 위한 맞춤 케어', style: TextStyle(fontWeight: FontWeight.w100, fontSize: 20, color:Colors.lightGreen)),
                Expanded(
                 child:Align(
                   alignment: FractionalOffset.bottomCenter,
                   child:
                   ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal,
                  minimumSize: Size(double.infinity, 60)),
                  onPressed:() => Get.to(SignUpPage()), 
                  child: Text('본인인증', style: TextStyle(fontSize: 18))))
               )
              ]),
            ),
          ),
        ),
      ),
    );
  }
}