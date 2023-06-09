import 'package:flutter/material.dart';

class welcome_home extends StatelessWidget {
  final String text;
  welcome_home({required this.text});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 16),
          child: Text(
            'Hi, ' + text,
            style: TextStyle(
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
