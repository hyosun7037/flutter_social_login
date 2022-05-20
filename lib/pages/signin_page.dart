import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SigninPage extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        elevation: 0.5,
        backgroundColor: Colors.white,
        leading: 
        IconButton(onPressed:() => Get.back(), icon: Icon(Icons.arrow_back, color: Colors.black,)),
        actions:[
          IconButton(onPressed: (){}, icon: Icon(Icons.live_help, color:Colors.black))
        ]
        ),
      backgroundColor: Color(0xffffffff),
      body: Form(
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
                child: renderTextFormField(
                label: '이메일',
                onSaved: (val){},
                validator: (val){
                  return null;
                }),
              ),
              SizedBox(height: screenHeight * .025),
              SizedBox(
                width: MediaQuery.of(context).size.width - 70,
                child: renderTextFormField(
                label: '비밀번호',
                onSaved: (val){},
                validator: (val){
                  return null;
                }),
              ),
             Expanded(
             child:Align(
               alignment: FractionalOffset.bottomCenter,
               child:
               ElevatedButton(
              style: ElevatedButton.styleFrom(
              minimumSize: Size(double.infinity, 70)),
              onPressed:(){}, 
              child: Text('다음', style: TextStyle(fontSize: 18))))
            ),
            ],
          ),
        ),
      )
    );
  }
}

 Widget renderTextFormField({
    required String label,
    required FormFieldSetter onSaved,
    required FormFieldValidator validator,
  }) {
    assert(onSaved != null);
    assert(validator != null);

    return Column(
      children: [
        Row(
          children: [
            Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        TextFormField(
          onSaved: onSaved,
          validator: validator,
        ),
      ],
    );
  }