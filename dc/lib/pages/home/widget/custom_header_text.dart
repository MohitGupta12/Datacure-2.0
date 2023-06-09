import 'package:flutter/material.dart';

class CustomHeaderClass extends StatelessWidget {
  final String textContent;
  final double size;
  final Color colors;
  const CustomHeaderClass({
    super.key,
    required this.textContent,
    required this.colors,
    this.size = 40,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        textContent,
        style: TextStyle(
            fontSize: size, fontWeight: FontWeight.w700, color: colors),
      ),
    );
  }
}
