import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:kakao_test/app/modules/sign/page/social_login_page.dart';
import 'package:kakao_test/app/widget/item_list.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({Key? key}) : super(key: key);

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {

  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState(){
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index){
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => onBoardingContent(
                    image: demo_data[index].image,
                    title: demo_data[index].title)),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ...List.generate(
                    demo_data.length, 
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    )),
                  // SizedBox(
                  //   height: 60,
                  //   width: 60,
                  //   child:  ElevatedButton(
                  //     onPressed: (){
                  //       _pageController.nextPage(
                  //         duration: Duration(milliseconds: 300), 
                  //         curve: Curves.ease);
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       shape: const CircleBorder(),
                  //     ),
                  //     child: Image.asset('assets/arrow-right.png', color: Colors.white),
                  //   ),
                  // ),
                ],
              ),
              SizedBox(height: 20),
              if(_pageIndex == 3)
              StartBtn()
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key, 
    this.isActive = false
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        color: isActive ? Colors.teal : Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(12))),
      );
  }
}


class Onboard{
  final String image, title;
  final String? desc;

  Onboard({
    required this.image,
    required this.title,
    this.desc
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image: "assets/1.jpg",
    title: '나를 위한 맞춤 케어\n마더스',
  ),
  Onboard(
    image: "assets/1.jpg",
    title: '나만의 선생님\n나만의 산후조리사\n나만의 트레이너',
  ),
  Onboard(
    image: "assets/1.jpg",
    title: '2주간 무료로\n다양한 콘텐츠를\n즐겨보세요.',
  ),
  Onboard(
    image: "assets/1.jpg",
    title: 'AI 기반 운동정보로\n\n임신부터\n산후조리까지\n마더스와 함께해요',
  ),
];


class StartBtn extends StatelessWidget {
  const StartBtn({
    Key? key, 
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 60,
        child: CupertinoButton(
          borderRadius: BorderRadius.circular(50),
          color: Colors.teal,
          onPressed: () => Get.to(SocialLoginPage()),
          child: Text('마더스 시작하기', style: TextStyle(fontSize: 18, color: Colors.white)),
        ),
    );
}}

class onBoardingContent extends StatelessWidget {
  const onBoardingContent({
    Key? key,
    this.image = "assets/1.jpg",
    required this.title,
    this.desc
    
  }) : super(key: key);

  final String image;
  final String title;
  final String? desc;

  @override
  Widget build(BuildContext context) {
    return Column( 
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Spacer(),
        Expanded(
          flex: 5,
          child: Container( 
            height: 250,
            width: 250,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                alignment: Alignment.center,
                matchTextDirection: true,
                image: AssetImage(image)),
              shape: BoxShape.circle
            ),
          ),
        ),
        const Spacer(),
        Text(title, 
        textAlign: TextAlign.center,
        style: Theme.of(context)
        .textTheme
        .headline5!
        .copyWith(fontWeight: FontWeight.w500)),
        const Spacer()
      ],
    );
  }
}