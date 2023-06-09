import 'package:flutter/material.dart';

class sectionTitle extends StatelessWidget {
  const sectionTitle({
    super.key,
    required this.primaryColor,
    required this.text,
    // required this.icon,
  });
  //final Icon icon;
  final Color primaryColor;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyle(
              color: primaryColor,
              fontSize: 24,
              // fontFamily: 'FiraSans',
              fontWeight: FontWeight.w500),
        ),
        IconButton(
          icon: Icon(
            Icons.arrow_circle_right_outlined,
            color: primaryColor,
            size: 32,
          ),
          onPressed: () {},
        ),
      ],
    );
  }
}
