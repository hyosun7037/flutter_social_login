import 'package:flutter/material.dart';

class CircleTag extends StatelessWidget {
  const CircleTag({
    Key? key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.shape,
    this.height = 100,
    this.border,
    this.borderRadius
    
  }) : super(key: key);

  final String firstText;
  final String secondText;
  final String thirdText;
  final BoxShape shape;
  final double height;
  final BoxBorder? border;
  final BorderRadiusGeometry? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: height,
              decoration: BoxDecoration(
                color: Colors.black12,
                shape: shape,
                border: border,
                borderRadius: borderRadius
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.03),
            Text(firstText, style: TextStyle(fontSize: 15)),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.05),
        SizedBox(height: MediaQuery.of(context).size.width * 0.25),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: height,
              decoration: BoxDecoration(
                color: Colors.black12,
                shape: shape,
                border: border,
                borderRadius: borderRadius
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.03),
            Text(secondText, style: TextStyle(fontSize: 15)),
          ],
        ),
        SizedBox(width: MediaQuery.of(context).size.width * 0.05),
        SizedBox(height: MediaQuery.of(context).size.width * 0.25),
        Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.25,
              height: height,
              decoration: BoxDecoration(
                color: Colors.black12,
                shape: shape,
                border: border,
                borderRadius: borderRadius
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.width * 0.03),
            Text(thirdText, style: TextStyle(fontSize: 15)),
          ],
        ),
      ],
    );
  }
}