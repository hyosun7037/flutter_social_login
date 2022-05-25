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
    required this.btnTextColor,
    this.minHeight,
    this.width,
    this.padding,
  }) : super(key: key);

  final SocialLoginController? socialLoginController;
  final double borderRadius;
  final Function() onPressed;
  final String btnText;
  final Color btnColor;
  final Color btnTextColor;
  final double? minHeight;
  final double? width;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Container(
    width: (MediaQuery.of(context).size.width),
    child: CupertinoButton(
      borderRadius: BorderRadius.circular(borderRadius),
      onPressed: onPressed,
      color: btnColor,
      padding: padding,
      child: Text(btnText,
        style: TextStyle(
          fontSize: 18,
          color:btnTextColor
          ),
        ),
      ),
    );
  }
}