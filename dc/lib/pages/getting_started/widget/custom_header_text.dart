import 'package:flutter/material.dart';

class CustomHeaderClass extends StatelessWidget {
  final String textContent;
  final int size;
  final Color colors;
  final double? padding;
  const CustomHeaderClass(
      {super.key,
      required this.textContent,
      required this.colors,
      this.size = 40,
      this.padding});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsetsDirectional.all(padding!),
      child: Text(
        textContent,
        style:
            TextStyle(fontSize: 40, fontWeight: FontWeight.w700, color: colors),
      ),
    );
  }
}
