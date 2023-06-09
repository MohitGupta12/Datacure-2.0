import 'package:flutter/material.dart';

class CustomHeader extends StatelessWidget {
  final String text;
  const CustomHeader({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16, top: 5, bottom: 5),
          child: Text(
            text,
            style: const TextStyle(
              backgroundColor: Color.fromARGB(0, 255, 193, 7),
              color: Color(0xff2d3c4e),
              fontWeight: FontWeight.w600,
              fontFamily: 'FiraSans',
              fontSize: 25,
            ),
          ),
        ),
      ],
    );
  }
}
