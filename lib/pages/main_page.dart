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
                ],
              )),
          ),
          // circle
          
          SliverPadding(
            padding: EdgeInsets.only(left:15, right:10, top: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('나를 위한 맞춤 추천', style: TextStyle(fontSize: 18, color: Colors.teal)),
                    ]),
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('출산 전 준비', style: TextStyle(fontSize: 18, color: Colors.black87)),
                        TextButton(onPressed: (){}, child: Text('전체보기', style: TextStyle(color: Colors.black45),))
                      ]),
                    ),
                ],
              )
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
            ),
            SliverPadding(
            padding: EdgeInsets.only(left:15, right:10, top: 10),
            sliver: SliverToBoxAdapter(
              child: Column(
                children: [
                    Padding(
                      padding: const EdgeInsets.only(top:8.0),
                      child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('골반 틀어짐 교정하기', style: TextStyle(fontSize: 18, color: Colors.black87)),
                        TextButton(onPressed: (){}, child: Text('전체보기', style: TextStyle(color: Colors.black45),))
                      ]),
                    ),
                ],
              )
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
    return Padding(
      padding: const EdgeInsets.only(left:10, right: 5),
      child: InkWell(
        borderRadius: BorderRadius.all(
          Radius.circular(6)
        ),
        onTap: (){},
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.45,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10.0),
                child: Image.asset(image,
                fit: BoxFit.cover)
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text.rich(
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
                        text: '임신 1주차 때 참고 하기 좋은 운동이에요!',
                        style: TextStyle(
                          fontSize: 14, 
                          fontWeight: FontWeight.w100, 
                          color: Colors.black87)
                      ),
                    ]),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.favorite, size: 15, color: Colors.red,),
                    Text('325', style: TextStyle(fontSize: 15))
                ],),
              )
            ],
          ),
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
