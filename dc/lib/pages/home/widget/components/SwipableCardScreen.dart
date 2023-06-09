// ignore: file_names
import 'package:flutter/material.dart';
import 'package:tcard/tcard.dart';

import '../card.dart';

Color primaryColor = const Color(0xff2d3c4e);

class SwipeableCardScreen extends StatefulWidget {
  const SwipeableCardScreen({super.key});

  @override
  State<SwipeableCardScreen> createState() => _SwipeableCardScreenState();
}

class _SwipeableCardScreenState extends State<SwipeableCardScreen> {
  final List<Widget> cards = [
    CardWidget(
      color: primaryColor,
      test:
          'Health is a state of complete harmony of the body, mind, and spirit.',
    ),
    CardWidget(
      color: primaryColor,
      test: "The greatest wealth is health.",
    ),
    CardWidget(
      color: primaryColor,
      test:
          "Your body hears everything your mind says. Stay positive. Be healthy.",
    ),
    CardWidget(
      color: primaryColor,
      test: "Take care of your body. It's the only place you have to live.",
    ),
    CardWidget(
      color: primaryColor,
      test: "Healthy is an outfit that looks different on everybody.",
    ),
    CardWidget(
      color: primaryColor,
      test: "The groundwork for all happiness is good health.",
    ),
    CardWidget(
      color: primaryColor,
      test:
          "Good health is not something we can buy. It is an investment we must make.",
    ),
    CardWidget(
      color: primaryColor,
      test: "A healthy outside starts from the inside.",
    ),
    CardWidget(
      color: primaryColor,
      test: "The first wealth is health.",
    ),
    CardWidget(
      color: primaryColor,
      test:
          "Health is like money, we never have a true idea of its value until we lose it.",
    ),
    CardWidget(
      color: primaryColor,
      test:
          "To keep the body in good health is a duty... otherwise, we shall not be able to keep the mind strong and clear.",
    ),
    CardWidget(
        color: primaryColor,
        test: "A healthy body is a guest chamber for the soul."),
  ];

  final TCardController controller = TCardController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: SizedBox(
        height: 180,
        width: 900,
        child: Scaffold(
          body: Container(
            color: const Color.fromARGB(255, 235, 244, 254),
            child: TCard(
              cards: cards,
              size: Size(size.height, size.width),
              controller: controller,
              onForward: (index, info) {
                setState(() {});
              },
              onBack: (index, info) {
                setState(() {});
              },
              //cardBuilder: (context, index) => cards[index],
              onEnd: () {},
            ),
          ),
        ),
      ),
    );
  }
}
