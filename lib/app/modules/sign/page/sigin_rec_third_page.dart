import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/widget/circle_btn.dart';
import 'package:kakao_test/app/widget/circle_tag.dart';
import 'package:kakao_test/app/widget/close_app_bar.dart';
import 'package:kakao_test/pages/main_page.dart';

class SignInRecThirdPage extends StatefulWidget {
  const SignInRecThirdPage({Key? key}) : super(key: key);
  @override
  State<SignInRecThirdPage> createState() => _SignInRecThirdPageState();
}

class _SignInRecThirdPageState extends State<SignInRecThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CloseAppbar(
        backPress: () => Get.back(),
        progressBarRatio: 5/5,
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
                      text: '사진을 통해 체형 분석해서 \n가장 개인화된 맞춤 운동을 추천해드려요\n\n',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
                    ),
                    TextSpan(
                      text: 'Q3',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: Colors.teal),
                    ),
                  ])
              ),
            ),
            Text('\u{2757} 더 정확한 분석을 위해 체형을 파악할 수 있는 \n복장을 입은 사진을 업로드해주세요.', 
            style: TextStyle(fontSize: 17)),
            SizedBox(height: MediaQuery.of(context).size.width * 0.03),
            CircleTag(
              firstText: '신체 좌측 사진', 
              secondText: '신체 정면 사진', 
              thirdText: '신체 우측 사진',
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              height: 130,
              ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text('마더스에 제공한 모든 정보를 안전하게 보관돼요.', 
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color:Colors.black54
              )),
            SizedBox(height: MediaQuery.of(context).size.height * 0.03),
            Text('\u{1F645} 이런사진은 안돼요', 
            style: TextStyle(fontSize: 17)),
            SizedBox(height: MediaQuery.of(context).size.width * 0.03),
            CircleTag(
              firstText: '신체 좌측 사진', 
              secondText: '신체 정면 사진', 
              thirdText: '신체 우측 사진',
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(20),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.07),
            CircleBtn(
              onPressed: () => Get.to(MainPage()), 
              btnColor: Colors.teal, 
              btnTextColor: Colors.white,
              btnText: '완료하기',
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