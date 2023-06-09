import 'package:flutter/material.dart';

import '../widget/components/DropDownHome.dart';
import '../widget/components/SwipableCardScreen.dart';

import '../widget/components/recent_document.dart';
import '../widget/components/fam_member.dart';
import '../widget/components/sectionTitle.dart';
import '../widget/welcome_home.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({super.key});

  @override
  State<MyHomeScreen> createState() => MyHomeScreenState();
}

class MyHomeScreenState extends State<MyHomeScreen> {
  List<String> items = ['Aman', 'Rishika', 'Disco'];

  String? selectedItem = 'Aman';
  String currentUser = 'Manan';
  Color primaryColor = const Color(0xff2d3c4e);
  Color primaryColorDarker = const Color.fromARGB(255, 47, 61, 78);

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 244, 254),
        body: SizedBox(
          height: screenHeight,
          child: SingleChildScrollView(
            padding: const EdgeInsets.only(bottom: 4),
            child: Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                welcome_home(
                  text: currentUser,
                ),
                const DropDownHome(),
                const SizedBox(
                  height: 10,
                ),
                const SwipeableCardScreen(),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 16.0, left: 16.0, top: 2, bottom: 4),
                  child: sectionTitle(
                    primaryColor: primaryColor,
                    text: "Recent Documents",
                  ),
                ),
                DocumentListScreen(),
                Padding(
                  padding: const EdgeInsets.only(
                      right: 16.0, left: 16.0, top: 10, bottom: 0),
                  child: sectionTitle(
                    primaryColor: primaryColor,
                    text: "Family Members",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const InstagramStories(),
              ],
            ),
          ),
        ));
  }
}
