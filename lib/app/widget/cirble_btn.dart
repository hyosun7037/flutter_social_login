import 'package:flutter/cupertino.dart';
import '../modules/sign/controller/social_login_controller.dart';

class CircleBtn extends StatelessWidget {
  const CircleBtn({
    Key? key,
    this.socialLoginController,
    this.borderRadius = 50,
    required this.onPressed,
    this.btnText = '',
    required this.btnColor,
    required this.btnTextColor
  }) : super(key: key);

  final SocialLoginController? socialLoginController;
  final double borderRadius;
  final Function() onPressed;
  final String btnText;
  final Color btnColor;
  final Color btnTextColor;

  @override
  Widget build(BuildContext context) {
    return Container(
    width: MediaQuery.of(context).size.width,
    child: CupertinoButton(
      borderRadius: BorderRadius.circular(borderRadius),
      onPressed: onPressed,
      color: btnColor,
      child: Text(btnText,
        style: TextStyle(
          fontSize: 15,
          color:btnTextColor
          ),
        ),
      ),
    );
  }
}