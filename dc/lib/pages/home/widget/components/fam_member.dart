// ignore: file_names
import 'package:flutter/material.dart';

// class InstagramStories extends StatelessWidget {
//   final List<User> users = [
//     User(name: 'Father', profileImage: null, gender: Gender.male),
//     User(name: 'Mother', profileImage: null, gender: Gender.female),
//     User(name: 'Sister', profileImage: null, gender: Gender.female),
//     User(name: 'Brother', profileImage: null, gender: Gender.male),
//     User(name: 'GrandPa', profileImage: null, gender: Gender.male),
//     User(name: 'Aunt', profileImage: null, gender: Gender.female),
//     User(name: 'Cousin', profileImage: null, gender: Gender.female),
//     User(name: 'Brother 2', profileImage: null, gender: Gender.male),
//   ];

//   InstagramStories({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100.0,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: ListView.builder(
//           // padding: const EdgeInsets.only(right: 20),
//           scrollDirection: Axis.horizontal,
//           itemCount: users.length,
//           itemBuilder: (context, index) {
//             return StoryItem(user: users[index]);
//           },
//         ),
//       ),
//     );
//   }
// }

// class InstagramStories extends StatelessWidget {
//   final List<User> users = [
//     User(name: 'Father', profileImage: null, gender: Gender.male),
//     User(name: 'Mother', profileImage: null, gender: Gender.female),
//     User(name: 'Sister', profileImage: null, gender: Gender.female),
//     User(name: 'Brother', profileImage: null, gender: Gender.male),
//     User(name: 'GrandPa', profileImage: null, gender: Gender.male),
//     User(name: 'Aunt', profileImage: null, gender: Gender.female),
//     User(name: 'Cousin', profileImage: null, gender: Gender.female),
//     User(name: 'Brother 2', profileImage: null, gender: Gender.male),
//   ];

//   InstagramStories({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100.0,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: ListView.builder(
//           scrollDirection: Axis.horizontal,
//           itemCount: users.length + 1, // +1 for the indicator
//           itemBuilder: (context, index) {
//             if (index == users.length) {
//               // Render the indicator at the end of the list
//               final isRightMost = index == users.length;
//               return StoryIndicator(isRightMost: isRightMost);
//             } else {
//               return StoryItem(user: users[index]);
//             }
//           },
//         ),
//       ),
//     );
//   }
// }

// class StoryIndicator extends StatelessWidget {
//   final bool isRightMost;

//   const StoryIndicator({Key? key, required this.isRightMost});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 8.0),
//       child: Icon(
//         isRightMost ? Icons.arrow_back : Icons.arrow_forward,
//         color: Colors.grey,
//         size: 36.0,
//       ),
//     );
//   }
// }

// class InstagramStories extends StatelessWidget {
//   final List<User> users = [
//     User(name: 'Father', profileImage: null, gender: Gender.male),
//     User(name: 'Mother', profileImage: null, gender: Gender.female),
//     User(name: 'Sister', profileImage: null, gender: Gender.female),
//     User(name: 'Brother', profileImage: null, gender: Gender.male),
//     User(name: 'GrandPa', profileImage: null, gender: Gender.male),
//     User(name: 'Aunt', profileImage: null, gender: Gender.female),
//     User(name: 'Cousin', profileImage: null, gender: Gender.female),
//     User(name: 'Brother 2', profileImage: null, gender: Gender.male),
//   ];

//   InstagramStories({Key? key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 100.0,
//       child: Container(
//         padding: EdgeInsets.symmetric(horizontal: 20),
//         child: Stack(
//           children: [
//             ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: users.length + 1, // +1 for the indicator
//               itemBuilder: (context, index) {
//                 if (index == users.length) {
//                   // Render the indicator at the end of the list
//                   final isRightMost = index == users.length;
//                   return SizedBox
//                       .shrink(); // Placeholder item for the indicator
//                 } else {
//                   return StoryItem(user: users[index]);
//                 }
//               },
//             ),
//             Align(
//               alignment: Alignment.bottomRight,
//               child: StoryIndicator(),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class StoryIndicator extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: EdgeInsets.only(right: 8.0, bottom: 8.0),
//       child: Icon(
//         Icons.arrow_forward,
//         color: Colors.grey,
//         size: 36.0,
//       ),
//     );
//   }
// }

class InstagramStories extends StatefulWidget {
  const InstagramStories({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _InstagramStoriesState createState() => _InstagramStoriesState();
}

class _InstagramStoriesState extends State<InstagramStories> {
  final List<User> users = [
    User(name: 'Father', profileImage: null, gender: Gender.male),
    User(name: 'Mother', profileImage: null, gender: Gender.female),
    User(name: 'Sister', profileImage: null, gender: Gender.female),
    User(name: 'Brother', profileImage: null, gender: Gender.male),
    User(name: 'GrandPa', profileImage: null, gender: Gender.male),
    User(name: 'Aunt', profileImage: null, gender: Gender.female),
    User(name: 'Cousin', profileImage: null, gender: Gender.female),
    User(name: 'Brother 2', profileImage: null, gender: Gender.male),
  ];

  final ScrollController _scrollController = ScrollController();
  bool _isAtStart = true;
  bool _isAtEnd = false;

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    _scrollController.removeListener(_scrollListener);
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollListener() {
    if (_scrollController.offset <= 0) {
      setState(() {
        _isAtStart = true;
        _isAtEnd = false;
      });
    } else if (_scrollController.offset >=
        _scrollController.position.maxScrollExtent) {
      setState(() {
        _isAtStart = false;
        _isAtEnd = true;
      });
    } else {
      setState(() {
        _isAtStart = false;
        _isAtEnd = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115.0,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Stack(
          children: [
            Container(
              height: 90,
              padding: const EdgeInsets.only(bottom: 4),
              decoration: BoxDecoration(boxShadow: const [
                BoxShadow(
                  color: Color.fromARGB(255, 210, 213, 244),
                  spreadRadius: 0,
                  blurRadius: 10,
                  offset: Offset(4, 5),
                )
              ], borderRadius: BorderRadius.circular(14), color: Colors.white),
              child: ListView.builder(
                physics: const PageScrollPhysics(),
                controller: _scrollController,
                scrollDirection: Axis.horizontal,
                itemCount: users.length + 1, // +1 for the indicator
                itemBuilder: (context, index) {
                  if (index == users.length) {
                    // Render the indicator at the end of the list
                    return const SizedBox
                        .shrink(); // Placeholder item for the indicator
                  } else {
                    return StoryItem(user: users[index]);
                  }
                },
              ),
            ),
            if (_isAtEnd)
              const Align(
                alignment: Alignment.bottomRight,
                child: StoryIndicator(isRightArrow: false),
              ),
            if (!_isAtEnd && !_isAtStart)
              const Align(
                alignment: Alignment.bottomRight,
                child: StoryIndicator(isRightArrow: true),
              ),
            if (_isAtStart)
              const Align(
                alignment: Alignment.bottomRight,
                child: StoryIndicator(isRightArrow: true),
              ),
          ],
        ),
      ),
    );
  }
}

// class StoryIndicator extends StatelessWidget {
//   final bool isRightArrow;

//   const StoryIndicator({Key? key, required this.isRightArrow})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: const EdgeInsets.all(4.0),
//       child: Icon(
//         isRightArrow ? Icons.arrow_forward : Icons.arrow_back,
//         color: const Color.fromARGB(255, 40, 116, 215),
//         size: 18.0,
//       ),
//     );
//   }
// }

class StoryIndicator extends StatelessWidget {
  final bool isRightArrow;

  const StoryIndicator({Key? key, required this.isRightArrow})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      margin: const EdgeInsets.all(4.0),
      transform: Matrix4.translationValues(
        isRightArrow ? 0.0 : -10.0,
        0.0,
        0.0,
      ),
      child: Icon(
        isRightArrow ? Icons.arrow_forward : Icons.arrow_back,
        color: const Color.fromARGB(255, 40, 116, 215),
        size: 18.0,
      ),
    );
  }
}

class StoryItem extends StatelessWidget {
  final User user;

  const StoryItem({super.key, required this.user});

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 2),
  //     child: Column(
  //       children: [
  //         Container(
  //           margin: const EdgeInsets.symmetric(horizontal: 8.0),
  //           width: 60.0,
  //           height: 60.0,
  //           decoration: const BoxDecoration(
  //             shape: BoxShape.circle,
  //             color: Colors.grey, // Placeholder color for missing profile image
  //           ),
  //           child: user.profileImage != null
  //               ? ClipOval(
  //                   child: Image.asset(
  //                     user.profileImage!,
  //                     fit: BoxFit.cover,
  //                   ),
  //                 )
  //               : Icon(
  //                   user.gender == Gender.male ? Icons.male : Icons.female,
  //                   color: Colors.white,
  //                 ),
  //         ),
  //         const SizedBox(height: 10.0),
  //         Text(
  //           user.name,
  //           style: const TextStyle(fontSize: 14.0),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 2),
  //     child: Column(
  //       children: [
  //         Container(
  //           margin: const EdgeInsets.symmetric(horizontal: 8.0),
  //           width: 60.0,
  //           height: 60.0,
  //           decoration: const BoxDecoration(
  //             shape: BoxShape.circle,
  //             color: Colors.grey, // Placeholder color for missing profile image
  //           ),
  //           child: Stack(
  //             children: [
  //               if (user.profileImage != null)
  //                 ClipOval(
  //                   child: Image.asset(
  //                     user.profileImage!,
  //                     fit: BoxFit.cover,
  //                   ),
  //                 ),
  //               if (user.profileImage == null)
  //                 const Center(
  //                   child: Icon(
  //                     Icons.person,
  //                     size: 40.0,
  //                     color: Colors.white,
  //                   ),
  //                 ),
  //               Positioned(
  //                 bottom: 0,
  //                 right: 0,
  //                 child: Container(
  //                   padding: const EdgeInsets.all(2.0),
  //                   decoration: const BoxDecoration(
  //                     shape: BoxShape.circle,
  //                     color: Colors.blue,
  //                   ),
  //                   child: Icon(
  //                     user.gender == Gender.male ? Icons.male : Icons.female,
  //                     color: Colors.white,
  //                     size: 16.0,
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         const SizedBox(height: 10.0),
  //         Text(
  //           user.name,
  //           style: const TextStyle(fontSize: 14.0),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(
  //     padding: const EdgeInsets.symmetric(horizontal: 2),
  //     child: Column(
  //       children: [
  //         Container(
  //           margin: const EdgeInsets.symmetric(horizontal: 8.0),
  //           width: 60.0,
  //           height: 60.0,
  //           decoration: const BoxDecoration(
  //             shape: BoxShape.circle,
  //             color: Colors.grey, // Placeholder color for missing profile image
  //           ),
  //           child: Stack(
  //             children: [
  //               if (user.profileImage != null)
  //                 ClipOval(
  //                   child: Image.asset(
  //                     user.profileImage!,
  //                     fit: BoxFit.cover,
  //                   ),
  //                 ),
  //               if (user.profileImage == null)
  //                 Center(
  //                   child: Icon(
  //                     Icons.person,
  //                     size: 40.0,
  //                     color: Colors.white,
  //                   ),
  //                 ),
  //               Positioned(
  //                 bottom: 0,
  //                 right: 0,
  //                 child: Container(
  //                   padding: const EdgeInsets.all(2.0),
  //                   decoration: BoxDecoration(
  //                     shape: BoxShape.circle,
  //                     color: Colors.blue,
  //                   ),
  //                   child: Icon(
  //                     user.gender == Gender.male ? Icons.male : Icons.female,
  //                     color: Colors.white,
  //                     size: 16.0,
  //                   ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         const SizedBox(height: 10.0),
  //         Text(
  //           user.name,
  //           style: const TextStyle(fontSize: 14.0),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 2),
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 8.0),
            width: 60.0,
            height: 60.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: user.profileImage != null
                  ? Colors.grey
                  : Colors.transparent, // Updated color conditionally
            ),
            child: Stack(
              children: [
                if (user.profileImage != null)
                  ClipOval(
                    child: Image.asset(
                      user.profileImage!,
                      fit: BoxFit.cover,
                    ),
                  ),
                if (user.profileImage == null)
                  Center(
                    child: Icon(
                      Icons.person,
                      size: 60,
                      color: Color.fromARGB(255, 40, 60, 78),
                    ),
                  ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2.0),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.blue,
                    ),
                    child: Icon(
                      user.gender == Gender.male ? Icons.male : Icons.female,
                      color: Colors.white,
                      size: 16.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            user.name,
            style: const TextStyle(fontSize: 14.0),
          ),
        ],
      ),
    );
  }
}

class User {
  final String name;
  final String? profileImage;
  final Gender gender;

  User({required this.name, required this.profileImage, required this.gender});
}

enum Gender { male, female }
