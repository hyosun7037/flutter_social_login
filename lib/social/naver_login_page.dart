

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class NaverLoginPage extends StatefulWidget {
  const NaverLoginPage({Key? key}) : super(key: key);

  @override
  State<NaverLoginPage> createState() => _NaverLoginPageState();
}

class _NaverLoginPageState extends State<NaverLoginPage> {
  Future<void> _loginButtonPressed() async {
  }

@override
Widget build(BuildContext context){
  return Scaffold(
    body: SafeArea(
      minimum: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            const SizedBox(height: 10),
            SizedBox(
            width: MediaQuery.of(context).size.width,
            child: CupertinoButton(
              onPressed: (){},
              color: Colors.green,
              child: const Text(
                '네이버로 시작하기',
                style: TextStyle(
                  fontSize: 15,
                  color:Colors.white
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10)
          ],
        ),
      ),
    );
  }
}