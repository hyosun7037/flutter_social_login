import 'package:flutter/material.dart';
import 'package:kakao_test/app/widget/item_list.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar( 
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        elevation: 0,
        centerTitle: true,
        title:Text('마더스', style: TextStyle(color: Colors.black87)),
        leading: IconButton(
          color: Colors.black54,
          icon: Icon(Icons.menu), 
          onPressed: (){}),
          actions: [
            IconButton(
              onPressed: (){}, 
              icon: Icon(Icons.mark_chat_unread_outlined, color: Colors.black54))
          ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AspectRatio(
              aspectRatio: 1.8,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  PageView.builder(
                    itemCount: demo.length,
                    itemBuilder: (context, index) => Image.asset(
                      demo[index],
                    ),
                    ),
                  Positioned(
                    child: Row(
                      children: [
                      ])),
                ],
              )),
          ),
          // circle
          SliverPadding(
            padding: EdgeInsets.all(20),
            sliver: SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('나를 위한 맞춤 추천', style: TextStyle(fontSize: 18, color: Colors.teal)),
                  TextButton(onPressed: (){}, child: Text('전체보기', style: TextStyle(color: Colors.black45),))
                ])
            )),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    demo.length, 
                    (index) => 
                    SlidePic(image: "assets/1.jpg"),
                  ),
                ),
              ),
            )
        ]),
    );
  }
}

class SlidePic extends StatelessWidget {
  const SlidePic({
    Key? key,
    required this.image
  }) : super(key: key);

  final String  image;


  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.all(
        Radius.circular(6)
      ),
      onTap: (){},
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.45,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.25,
              child: Image.asset(image),
            ),
            Text.rich(
              TextSpan(
                children:[
                  TextSpan(
                    text: '강사명\n',
                    style: TextStyle(
                      fontSize: 16, 
                      fontWeight: FontWeight.w600, 
                      color: Colors.black87)
                  ),
                  TextSpan(
                    text: '커리큘럼 내용',
                    style: TextStyle(
                      fontSize: 14, 
                      fontWeight: FontWeight.w100, 
                      color: Colors.black87)
                  ),
                ]),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(Icons.favorite, size: 15, color: Colors.red,),
                Text('325', style: TextStyle(fontSize: 15))
            ],)
          ],
        ),
        ),
    );
  }
}

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.isActive
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:4,
      width:4,
      decoration: BoxDecoration(
        color: isActive ? Colors.teal : Colors.black12,
        borderRadius: BorderRadius.all(Radius.circular(12))
      ),
    );
  }
}
