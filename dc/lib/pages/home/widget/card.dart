import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  final Color color;
  final String test;

  const CardWidget({super.key, required this.color, required this.test});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 200,
      width: 300,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: .5,
        ),
        borderRadius: BorderRadius.circular(20),
        color: color,
        boxShadow: const [BoxShadow(color: Colors.black26, blurRadius: 5)],
      ),
      child: Center(
        child: Text(test,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 20,
              color: Colors.white,
              shadows: [
                Shadow(
                  color: Colors.cyan,
                  offset: Offset(1, 1),
                  blurRadius: 3,
                ),
                Shadow(
                  color: Colors.blueAccent,
                  offset: Offset(-1, -1),
                  blurRadius: 3,
                ),
                Shadow(
                  color: Colors.cyan,
                  offset: Offset(1, 1),
                  blurRadius: 5,
                ),
                Shadow(
                  color: Colors.blueAccent,
                  offset: Offset(-1, -1),
                  blurRadius: 5,
                ),
              ],
            )),
      ),
    );
  }
}
