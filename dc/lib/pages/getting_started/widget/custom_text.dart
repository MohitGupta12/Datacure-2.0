import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final double height;
  final FontWeight bold;
  final Color colors;
  final double padding;

  final String textContent;

  const CustomText({
    super.key,
    this.padding = 0,
    required this.textContent,
    this.height = 45,
    this.bold = FontWeight.normal,
    this.colors = const Color.fromARGB(255, 255, 255, 255),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.only(top: padding, bottom: padding),
      child: Text(
        textContent,
        textAlign: TextAlign.start,
        style: TextStyle(fontSize: height, fontWeight: bold, color: colors),
      ),
    );
  }
}
