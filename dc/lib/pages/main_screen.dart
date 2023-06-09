import 'package:dc/pages/profile/view/profile_screen.dart';
import 'package:flutter/material.dart';

import 'feed/view/feed_screen.dart';
import 'home/widget/bottom_navbar.dart';
import 'home/widget/custom_header_text.dart';
import 'home/view/home_screen.dart';
import 'locker/view/locker_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  MainScreenState createState() => MainScreenState();
}

class MainScreenState extends State<MainScreen> {
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
    // Size size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        title: CustomHeaderClass(
          textContent: currentPage,
          colors: const Color.fromARGB(255, 40, 60, 78),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 235, 244, 254),
        elevation: 0,
      ),
      body: getCurrentScreen(),
      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTabSelected: onTabSelected,
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
        return ProfileSettingsPage();
      // Add more cases for other screens if needed
      default:
        return const Center(
            child: Text(" Built it first then Navigate to it! baka"));
    }
  }
}












// import 'package:flutter/material.dart';

// import 'home/widget/bottom_navbar.dart';
// import 'home/widget/custom_header_text.dart';
// import 'home/view/home_screen.dart';
// import 'locker/view/locker_screen.dart';

// class MainScreen extends StatefulWidget {
//   const MainScreen({super.key});

//   @override
//   MainScreenState createState() => MainScreenState();
// }

// class MainScreenState extends State<MainScreen> {
//   @override
//   Widget build(BuildContext context) {
//     // Size size = MediaQuery.of(context).size;
//     return Scaffold(
//         appBar: AppBar(
//           title: const CustomHeaderClass(
//             textContent: 'DataCure',
//             colors: Color.fromARGB(255, 40, 60, 78),
//           ),
//           backgroundColor: const Color.fromARGB(255, 235, 244, 254),
//           elevation: 0,
//         ),
//         body: const MyHomeScreen(),
//         bottomNavigationBar: const BottomNavBar());
//   }
// }



















































// import 'package:flutter/material.dart';
// import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
// import 'package:image_picker/image_picker.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   late int _selectedIndex = 0;

 
//   Color primaryColor = const Color(0xff2d3c4e);
//   Color primaryColorDarker = const Color.fromARGB(255, 47, 61, 78);
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       //appbar
//       appBar: AppBar(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//         title: const Text(
//           'Datacure',
//           style: TextStyle(
//               color: Color(0xff2d3c4e),
//               fontFamily: 'FiraSans',
//               fontSize: 35,
//               fontWeight: FontWeight.bold),
//         ),
//       ),

//       body: _widgetOptions.elementAt(_selectedIndex),
//       backgroundColor: Colors.grey[300],
//       floatingActionButton: Visibility(
//         child: FloatingActionButton(
//           // elevation: 10,

//           //shape: CircleBorder(),
//           backgroundColor: const Color(0xff2d3c4e),
//           child: const Icon(Icons.document_scanner_outlined),
//           onPressed: () async {
//             final image =
//                 await ImagePicker().getImage(source: ImageSource.camera);
//             // Do something with the image
//           },
//         ),
//       ),
//       floatingActionButtonLocation:
//           FloatingActionButtonLocation.miniCenterDocked,

//       bottomNavigationBar: AnimatedBottomNavigationBar(
//         icons: const [Icons.home, Icons.lock, Icons.description, Icons.person],
//         //   icons: iconList,
//         activeIndex: _selectedIndex,
//         gapLocation: GapLocation.center,
//         notchSmoothness: NotchSmoothness.defaultEdge,
//         backgroundColor: const Color(0xff2d3c4e),
//         // leftCornerRadius: 32,
//         // rightCornerRadius: 32,
//         inactiveColor: Colors.grey[500],
//         activeColor: const Color.fromARGB(255, 255, 255, 255),
//         onTap: (index) => setState(() => _selectedIndex = index),
//         //other params
//       ),
//     );
//   }
// }
