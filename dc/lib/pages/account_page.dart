import 'package:dc/pages/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';

import 'feed/view/feed_screen.dart';
import 'home/widget/custom_header_text.dart';
import 'home/view/home_screen.dart';
import 'home/widget/bottom_navbar.dart';
import 'locker/view/locker_screen.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  int currentIndex = 0;

  String currentPage = "DataCure";

  void onTabSelected(int index) {
    setState(() {
      currentIndex = index;
      switch (currentIndex) {
        case 0:
          currentPage = "DataCure";
          break;
        case 1:
          currentPage = "Locker";
          break;
        case 2:
          currentPage = "Fit Facts";
          break;
        case 3:
          currentPage = "Profile";
          break;
        // Add more cases for other screens if needed
        default:
          currentPage = "DataCure";
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final double screenHeight = MediaQuery.of(context).size.height;
    // final double screenwidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: CustomHeaderClass(
          textContent: currentPage,
          colors: const Color.fromARGB(255, 40, 60, 78),
        ),
        backgroundColor: const Color.fromARGB(255, 235, 244, 254),
        elevation: 0,
        automaticallyImplyLeading: false,
      ),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTabSelected: onTabSelected,
      ),
      body: Container(
        height: screenHeight,
        padding: const EdgeInsets.all(16.0),
        color: const Color.fromARGB(255, 235, 244, 254),
        child: Column(
          children: [
            const SizedBox(height: 6.0),
            const CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey,
              child: Icon(Icons.person, size: 70, color: Colors.white),
            ),
            const SizedBox(height: 8.0),
            const Text(
              'Username',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              'UID: 123456789012',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(255, 210, 213, 244),
                    spreadRadius: 0,
                    blurRadius: 10,
                    offset: Offset(4, 5),
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'First Name',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Last Name',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Phone Number with Nationality',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Gender',
                    ),
                  ),
                  const TextField(
                    decoration: InputDecoration(
                      labelText: 'Date of Birth',
                    ),
                  ),
                  const SizedBox(height: 32.0),
                  Container(
                    // height: 40,
                    padding: const EdgeInsets.symmetric(horizontal: 48),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle update profile button press
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                        ),
                        child: const Text(
                          'Update Profile',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getCurrentScreen() {
    switch (currentIndex) {
      case 0:
        return const MyHomeScreen();
      case 1:
        return LockerScreen();
      case 2:
        return const RecommendedScreen();
      case 3:
        return const ProfileSettingsPage();
      // Add more cases for other screens if needed
      default:
        return const Center(
            child: Text(" Built it first then Navigate to it! baka"));
    }
  }
}
