import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kakao_test/app/modules/sign/page/sigin_rec_sec_page%20copy.dart';
import 'package:kakao_test/app/widget/circle_btn.dart';
import 'package:kakao_test/app/widget/close_app_bar.dart';

class SignInRecFirstPage extends StatefulWidget {
  const SignInRecFirstPage({Key? key}) : super(key: key);
  @override
  State<SignInRecFirstPage> createState() => _SignInRecFirstPageState();
}

class _SignInRecFirstPageState extends State<SignInRecFirstPage> {
  int _value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CloseAppbar(
        backPress: () => Get.back(),
        progressBarRatio: 3/5,
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
                      text: '내 몸, 내 체형이 알맞은\n맞춤 운동을 추천해줘요\n\n',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)
                    ),
                    TextSpan(
                      text: 'Q1',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.w300, color: Colors.teal),
                    ),
                  ])
              ),
            ),
            QueText(text: '일주일에 평균적으로 얼마나 운동하시나요?'),
            SizedBox(height: 10),
            Row(
              children: [
                QueTag(text: '거의 안함'),
                SizedBox(width: 10),
                QueTag(text: '1~2회'),
                SizedBox(width: 10),
                QueTag(text: '3~4회'),
                SizedBox(width: 10),
                QueTag(text: '5일이상'),
              ],
            ),
            SizedBox(height: 30),
            QueText(text: '임신/출산 경험이 있나요?'),
            SizedBox(height: 10),
            Row(
              children: [
                QueTag(text: '있어요'),
                SizedBox(width: 10),
                QueTag(text: '없어요'),
              ],
            ),
            SizedBox(height: 30),
            QueText(text: '지금 임신중이신가요?'),
            SizedBox(height: 10),
            Row(
              children: [
                QueTag(text: '있어요'),
                SizedBox(width: 10),
                QueTag(text: '없어요'),
              ],
            ),
            SizedBox(height: 30),
            QueText(text: '임신 몇 주차 이신가요?'),
            SizedBox(height: 10),
            Row(
              children: [
                QueTag(text: '~16주'),
                SizedBox(width: 10),
                QueTag(text: '16~35주'),
                SizedBox(width: 10),
                QueTag(text: '35주~'),
              ],
            ),
            SizedBox(height: 30),
            QueText(text: '임신 몇 주차 이신가요?'),
            SizedBox(height: 10),
            Row(
              children: [
                QueTag(text: '~16주'),
                SizedBox(width: 10),
                QueTag(text: '16~35주'),
                SizedBox(width: 10),
                QueTag(text: '35주~'),
              ],
            ),
            SizedBox(height: 30),
            QueText(text: '출산한 지 얼마나 되셨나요?'),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    QueTag(text: '일주일 이내'),
                    SizedBox(width: 10),
                    QueTag(text: '1주~2주'),
                    SizedBox(width: 10),
                    QueTag(text: '2주~한달'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    QueTag(text: '1~3달'),
                    SizedBox(width: 10),
                    QueTag(text: '3달 이상')
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            //slidebar
            QueText(text: '육아에 대한 스트레스가 어느 정도인가요?'),
            SizedBox(height: 10),
            Slider(
              label: _value.round().toString(),
              divisions: 10,
              thumbColor: Colors.teal,
              inactiveColor: Colors.black12,
              activeColor: Colors.teal,
              value: _value.toDouble(), 
              onChanged: (double value){
                setState(() {
                  _value = value.toInt();
                });
              },
              min: 0.0,
              max: 100.0,
              ),
            SizedBox(height: 30),
            QueText(text: '육아 스트레스의 원인이 뭔가요?'),
            SizedBox(height: 10),
            Column(
              children: [
                Row(
                  children: [
                    QueTag(text: '신체의 변화'),
                    SizedBox(width: 10),
                    QueTag(text: '육아정보 부족'),
                    SizedBox(width: 10),
                    QueTag(text: '체력의 한계'),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    QueTag(text: '경제적 문제'),
                    SizedBox(width: 10),
                    QueTag(text: '기타')
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            CircleBtn(
              onPressed: () => Get.to(SignInRecSecPage()), 
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