import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final int currentIndex;
  final Function(int) onTabSelected;

  const BottomNavBar({
    Key? key,
    required this.currentIndex,
    required this.onTabSelected,
  }) : super(key: key);

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration:
          const BoxDecoration(color: Color.fromARGB(255, 235, 244, 254)),
      child: Stack(
        children: [
          CustomPaint(
            size: Size(size.width, size.width * 0.180),
            painter: BNBCustomPainter(),
          ),
          Center(
            heightFactor: 0.6,
            child: FloatingActionButton(
              onPressed: () async {},
              elevation: 0.1,
              backgroundColor: const Color.fromARGB(255, 40, 60, 78),
              child: const Icon(Icons.camera_alt),
            ),
          ),
          SizedBox(
            width: size.width,
            height: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildBottomNavItem(
                  index: 0,
                  icon: Icons.home,
                  color: Colors.white,
                  size: size,
                ),
                buildBottomNavItem(
                  index: 1,
                  icon: Icons.lock,
                  color: Colors.white,
                  size: size,
                ),
                Container(width: size.width * 0.20),
                buildBottomNavItem(
                  index: 2,
                  icon: Icons.bookmark,
                  color: Colors.white,
                  size: size,
                ),
                buildBottomNavItem(
                  index: 3,
                  icon: Icons.notifications,
                  color: Colors.white,
                  size: size,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget buildBottomNavItem({
    required int index,
    required IconData icon,
    required Color color,
    required Size size,
  }) {
    bool isSelected = widget.currentIndex == index;
    return Column(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 1500),
          curve: Curves.fastLinearToSlowEaseIn,
          margin: EdgeInsets.only(
            bottom: isSelected ? 0 : size.width * .029,
            right: size.width * .02,
            left: size.width * .02,
          ),
          width: size.width * .10,
          height: isSelected ? size.width * .014 : 0,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(10),
            ),
          ),
        ),
        IconButton(
          icon: Icon(
            icon,
            color: isSelected ? Colors.white : Colors.grey.shade400,
          ),
          onPressed: () {
            widget.onTabSelected(index);
          },
          splashColor: Colors.white,
        ),
      ],
    );
  }
}

class BNBCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = const Color.fromARGB(255, 40, 60, 78)
      ..style = PaintingStyle.fill;
    Path path = Path();

    path.moveTo(0, 0);
    path.lineTo(size.width * 0.35, 0);
    path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
    path.arcToPoint(
      Offset(size.width * 0.60, 20),
      radius: const Radius.circular(20.0),
      clockwise: false,
    );
    path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.lineTo(0, 20);
    canvas.drawShadow(path, Colors.blue, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}

























// import 'package:flutter/material.dart';

// class BottomNavBar extends StatefulWidget {
//   const BottomNavBar({super.key});

//   // final BuildContext contexts;

//   // const BottomNavBar({required this.contexts, super.key});

//   @override
//   State<BottomNavBar> createState() => _BottomNavBarState();
// }

// class _BottomNavBarState extends State<BottomNavBar> {
//   var currentIndex = 0;

//   setBottomBarIndex(index) {
//     setState(() {
//       currentIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Container(
//       decoration:
//           const BoxDecoration(color: Color.fromARGB(255, 235, 244, 254)),
//       child: Stack(
//         children: [
//           CustomPaint(
//             size: Size(size.width, size.width * .180),
//             painter: BNBCustomPainter(),
//           ),
//           Center(
//             heightFactor: .6,
//             child: FloatingActionButton(
//               onPressed: () async {},
//               elevation: .1,
//               backgroundColor: const Color.fromARGB(255, 40, 60, 78),
//               child: const Icon(Icons.camera_alt),
//             ),
//           ),
//           SizedBox(
//             width: size.width,
//             height: 70,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Column(
//                   children: [
//                     AnimatedContainer(
//                       duration: const Duration(milliseconds: 1500),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       margin: EdgeInsets.only(
//                         bottom: currentIndex == 0 ? 0 : size.width * .029,
//                         right: size.width * .02,
//                         left: size.width * .02,
//                       ),
//                       width: size.width * .10,
//                       height: currentIndex == 0 ? size.width * .014 : 0,
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.vertical(
//                           bottom: Radius.circular(10),
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                       icon: Icon(
//                         Icons.home,
//                         color: currentIndex == 0
//                             ? Colors.white
//                             : Colors.grey.shade400,
//                       ),
//                       onPressed: () {
//                         setBottomBarIndex(0);
//                       },
//                       splashColor: Colors.white,
//                     ),
//                     // SizedBox(height: size.width * .03),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     AnimatedContainer(
//                       duration: const Duration(milliseconds: 1500),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       margin: EdgeInsets.only(
//                         bottom: currentIndex == 1 ? 0 : size.width * .029,
//                         right: size.width * .02,
//                         left: size.width * .02,
//                       ),
//                       width: size.width * .10,
//                       height: currentIndex == 1 ? size.width * .014 : 0,
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.vertical(
//                           bottom: Radius.circular(10),
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                         icon: Icon(
//                           Icons.lock,
//                           color: currentIndex == 1
//                               ? Colors.white
//                               : Colors.grey.shade400,
//                         ),
//                         onPressed: () {
//                           setBottomBarIndex(1);
//                         }),
//                     // SizedBox(height: size.width * .03),
//                   ],
//                 ),
//                 Container(
//                   width: size.width * 0.20,
//                 ),
//                 Column(
//                   children: [
//                     AnimatedContainer(
//                       duration: const Duration(milliseconds: 1500),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       margin: EdgeInsets.only(
//                         bottom: currentIndex == 2 ? 0 : size.width * .029,
//                         right: size.width * .02,
//                         left: size.width * .02,
//                       ),
//                       width: size.width * .10,
//                       height: currentIndex == 2 ? size.width * .014 : 0,
//                       decoration: const BoxDecoration(
//                         color: Colors.white,
//                         borderRadius: BorderRadius.vertical(
//                           bottom: Radius.circular(10),
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                         icon: Icon(
//                           Icons.bookmark,
//                           color: currentIndex == 2
//                               ? Colors.white
//                               : Colors.grey.shade400,
//                         ),
//                         onPressed: () {
//                           setBottomBarIndex(2);
//                         }),

//                     // SizedBox(height: size.width * .03),
//                   ],
//                 ),
//                 Column(
//                   children: [
//                     AnimatedContainer(
//                       duration: const Duration(milliseconds: 1500),
//                       curve: Curves.fastLinearToSlowEaseIn,
//                       margin: EdgeInsets.only(
//                         bottom: currentIndex == 3 ? 0 : size.width * .029,
//                         right: size.width * .02,
//                         left: size.width * .02,
//                       ),
//                       width: size.width * .10,
//                       height: currentIndex == 3 ? size.width * .014 : 0,
//                       decoration: const BoxDecoration(
//                         color: Colors.transparent,
//                         borderRadius: BorderRadius.vertical(
//                           bottom: Radius.circular(10),
//                         ),
//                       ),
//                     ),
//                     IconButton(
//                         icon: Icon(
//                           Icons.notifications,
//                           color: currentIndex == 3
//                               ? Colors.white
//                               : Colors.grey.shade400,
//                         ),
//                         onPressed: () {
//                           setBottomBarIndex(3);
//                         }),
//                     // SizedBox(height: size.width * .03),
//                   ],
//                 ),
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class BNBCustomPainter extends CustomPainter {
//   @override
//   void paint(Canvas canvas, Size size) {
//     Paint paint = Paint()
//       ..color = const Color.fromARGB(255, 40, 60, 78)
//       ..style = PaintingStyle.fill;
//     Path path = Path();

//     // path.lineTo(size.width * .35, 0);

//     //   path.moveTo(0, 20); // Start
//     // path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
//     // path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
//     // path.arcToPoint(Offset(size.width * 0.60, 20),
//     //     radius: Radius.circular(20.0), clockwise: false);
//     // path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
//     // path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
//     // path.lineTo(size.width, size.height);
//     // path.lineTo(0, size.height);
//     // path.lineTo(0, 20);
//     // canvas.drawShadow(path, Colors.black, 5, true);
//     // canvas.drawPath(path, paint);

//     path.moveTo(0, 0); // Start
//     path.lineTo(size.width * 0.35, 0);
//     // path.quadraticBezierTo(size.width * 0.20, 0, size.width * 0.35, 0);
//     path.quadraticBezierTo(size.width * 0.40, 0, size.width * 0.40, 20);
//     path.arcToPoint(Offset(size.width * 0.60, 20),
//         radius: const Radius.circular(20.0), clockwise: false);
//     path.quadraticBezierTo(size.width * 0.60, 0, size.width * 0.65, 0);
//     // path.quadraticBezierTo(size.width * 0.80, 0, size.width, 20);
//     path.lineTo(size.width, 0);

//     path.lineTo(size.width, size.height);
//     path.lineTo(0, size.height);
//     path.lineTo(0, 20);
//     canvas.drawShadow(path, Colors.blue, 5, true);
//     canvas.drawPath(path, paint);
//   }

//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) {
//     return false;
//   }
// }
