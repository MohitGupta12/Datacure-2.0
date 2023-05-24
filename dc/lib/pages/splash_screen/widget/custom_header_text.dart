import 'package:flutter/material.dart';

class CustomHeaderClass extends StatelessWidget {
  final String textContent;
  final int size;

  const CustomHeaderClass(
      {super.key, required this.textContent, this.size = 40});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textContent,
        style: const TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.w700,
            color: Color(0xffffffff)),
      ),
    );
  }
}
