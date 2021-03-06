import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/page/sigin_rec_third_page.dart';
import 'package:kakao_test/app/widget/circle_btn.dart';
import 'package:kakao_test/app/widget/circle_tag.dart';
import 'package:kakao_test/app/widget/close_app_bar.dart';

class SignInRecSecPage extends StatefulWidget {
  const SignInRecSecPage({Key? key}) : super(key: key);
  @override
  State<SignInRecSecPage> createState() => _SignInRecSecPageState();
}

class _SignInRecSecPageState extends State<SignInRecSecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CloseAppbar(
        backPress: () => Get.back(),
        progressBarRatio: 4/5,
      ),
      body: SingleChildScrollView(
        padding:const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Container(
              alignment: Alignment.topLeft,
              child: Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: '통증 부위를 감안하여 \n맞춤 루틴을 소개해드려요\n\n',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
                    ),
                    TextSpan(
                      text: 'Q2',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: Colors.teal),
                    ),
                  ])
              ),
            ),
            QueText(text: '현재 가장 통증을 느끼고 있는 부위를\n모두 선택해주세요'),
            CircleTag(firstText: '골반', secondText: '손목', thirdText: '발목', shape: BoxShape.circle),
            SizedBox(height: MediaQuery.of(context).size.width * 0.05),
            CircleTag(firstText: '목', secondText: '어깨', thirdText: '허리', shape: BoxShape.circle),
            SizedBox(height: MediaQuery.of(context).size.width * 0.05),
            CircleTag(firstText: '무릎', secondText: '두통', thirdText: '없음', shape: BoxShape.circle),
            SizedBox(height: MediaQuery.of(context).size.width * 0.1),
            CircleBtn(
              onPressed: () => Get.to(SignInRecThirdPage()), 
              btnColor: Colors.teal, 
              btnTextColor: Colors.white,
              btnText: '다음',
              padding: EdgeInsets.all(20))
          ],
        ),
      ),
    );
  }
}

class QueText extends StatelessWidget {
  const QueText({
    Key? key,
    required this.text,
    this.textSize = 20,
    this.textWeight = FontWeight.w200,
    this.textColor = Colors.black54
  }) : super(key: key);

  final String text;
  final double? textSize;
  final FontWeight textWeight;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: textSize, 
        fontWeight: textWeight, 
        color: Colors.black54),
    );
  }
}

class QueTag extends StatefulWidget {
   QueTag({
    Key? key,
    required this.text,
    this.btnColor = Colors.black12,
    this.textColor = Colors.black87
  }) : super(key: key);

  final String text;
  Color? btnColor;
  Color? textColor;

  @override
  State<QueTag> createState() => _QueTagState();
}

class _QueTagState extends State<QueTag> {
  
  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: CupertinoButton(
        onPressed: (){
          setState(() {
          });
        },
        borderRadius: BorderRadius.circular(20),
        color: widget.btnColor,
        padding: EdgeInsets.all(10),
        child: RichText(
          overflow: TextOverflow.ellipsis,
          text: TextSpan(
            text: widget.text,
            style: TextStyle(
              color: widget.textColor
            ))),
      )
    );
  }
}