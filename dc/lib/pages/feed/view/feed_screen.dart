import '../widget/custom_header.dart';
import 'package:flutter/material.dart';

class RecommendedScreen extends StatelessWidget {
  const RecommendedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 235, 244, 254),
        body: SingleChildScrollView(
          child: Column(
            children: [
              const CustomHeader(text: "Recents "),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Container(
                  padding: EdgeInsets.all(2),
                  height: 170,
                  // padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border:
                        Border.all(color: Colors.lightBlue.shade50, width: 1),
                    borderRadius: BorderRadius.circular(14.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(255, 210, 213, 244),
                        spreadRadius: 0,
                        blurRadius: 10,
                        offset: Offset(4, 5),
                      )
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          CardItem(
                              title: "Why health is often called as wealth",
                              authorName: "Charles O'Neill",
                              profilePhoto: "assets/images/profile_4.png",
                              bgInt: 5,
                              isStarred: false,
                              size: size),
                          CardItem(
                              title: "Why health is often called as wealth",
                              authorName: "Maggie O'Neill",
                              profilePhoto: "assets/images/profile_3.png",
                              bgInt: 3,
                              isStarred: false,
                              size: size),
                          CardItem(
                              title: "Why health is often called as wealth",
                              authorName: "James Smith",
                              profilePhoto: "assets/images/profile_2.png",
                              bgInt: 4,
                              isStarred: false,
                              size: size),
                          CardItem(
                            title: "Why health is often called as wealth",
                            authorName: "Robert Peterson",
                            profilePhoto: "assets/images/profile_1.jpg",
                            isStarred: false,
                            size: size,
                            bgInt: 1,
                          ),
                          CardItem(
                              title: "Why health is often called as wealth",
                              authorName: "James Smith",
                              profilePhoto: "assets/images/profile_2.png",
                              bgInt: 2,
                              isStarred: false,
                              size: size),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const CustomHeader(text: "Recommended"),
              Container(
                height: size.height * .49,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.lightBlue.shade50, width: 1),
                  borderRadius: BorderRadius.circular(14.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color.fromARGB(255, 210, 213, 244),
                      spreadRadius: 0,
                      blurRadius: 10,
                      offset: Offset(4, 5),
                    )
                  ],
                ),
                padding: const EdgeInsets.all(10),
                child: SingleChildScrollView(
                  // scrollDirection: Axis.horizontal,
                  child: Column(
                    children: [
                      RecommendedCardItem(
                        title: "Why health is often called as wealth",
                        authorName: "Robert Peterson",
                        profilePhoto: "assets/images/profile_3.png",
                        isStarred: true,
                        size: size,
                        bgInt: 1,
                      ),
                      RecommendedCardItem(
                          title: "Why health is often called as wealth",
                          authorName: "James Smith",
                          profilePhoto: "assets/images/profile_2.png",
                          isStarred: true,
                          bgInt: 2,
                          size: size),
                      RecommendedCardItem(
                          title: "Why health is often called as wealth",
                          authorName: "Charles O'Neill",
                          profilePhoto: "assets/images/profile_4.png",
                          isStarred: false,
                          bgInt: 3,
                          size: size),
                      RecommendedCardItem(
                          title: "Why health is often called as wealth",
                          authorName: "Robert Peterson",
                          profilePhoto: "assets/images/profile_3.png",
                          isStarred: false,
                          bgInt: 4,
                          size: size),
                      RecommendedCardItem(
                          title: "Why health is often called as wealth",
                          authorName: "James Smith",
                          profilePhoto: "assets/images/profile_2.png",
                          isStarred: false,
                          bgInt: 5,
                          size: size),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

class RecommendedCardItem extends StatelessWidget {
  final String title;
  final String authorName;
  final String profilePhoto;
  final bool isStarred;
  final Size size;
  final int bgInt;

  const RecommendedCardItem({
    super.key,
    required this.title,
    required this.authorName,
    required this.profilePhoto,
    this.isStarred = false,
    required this.size,
    required this.bgInt,
  });

  @override
  Widget build(BuildContext context) {
    String bgImg;
    switch (bgInt) {
      case 1:
        bgImg = "assets/images/article_1.jpeg";
        break;
      case 2:
        bgImg = "assets/images/article_2.png";
        break;
      case 3:
        bgImg = "assets/images/article_3.png";
        break;
      case 4:
        bgImg = "assets/images/article_4.png";
        break;
      case 5:
        bgImg = "assets/images/article_5.png";
        break;
      default:
        bgImg = "assets/ images / article_3.png";
        break;
    }

    return SizedBox(
      width: size.width * .85,
      height: 140,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        shadowColor: const Color.fromARGB(255, 235, 244, 254),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(bgImg),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: profilePhoto.isNotEmpty
                        ? Colors.black
                        : Colors.lightBlue,
                    child: profilePhoto.isNotEmpty
                        ? Container(
                            color: Colors.transparent,
                            child: ClipOval(
                              child: Image.asset(
                                profilePhoto,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : const Icon(Icons.person),

                    // child: profilePhoto.isNotEmpty
                    //     ? Image.asset(profilePhoto)
                    //     : const Icon(Icons.person),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      authorName,
                      style: const TextStyle(shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(1, 2),
                          blurRadius: 5,
                        )
                      ], fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                icon: Icon(
                  isStarred ? Icons.star : Icons.star,
                  color: isStarred ? Colors.yellow : null,
                ),
                onPressed: () {
                  // Handle star button press
                },
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  title,
                  style: const TextStyle(shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    )
                  ], fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CardItem extends StatelessWidget {
  final String title;
  final String authorName;
  final String profilePhoto;
  final bool isStarred;
  final Size size;
  final int bgInt;

  const CardItem({
    super.key,
    required this.title,
    required this.authorName,
    required this.profilePhoto,
    this.isStarred = false,
    required this.size,
    required this.bgInt,
  });

  @override
  Widget build(BuildContext context) {
    String bgImg;
    switch (bgInt) {
      case 1:
        bgImg = "assets/images/article_1.jpeg";
        break;
      case 2:
        bgImg = "assets/images/article_2.png";
        break;
      case 3:
        bgImg = "assets/images/article_3.png";
        break;
      case 4:
        bgImg = "assets/images/article_4.png";
        break;
      case 5:
        bgImg = "assets/images/article_5.png";
        break;
      default:
        bgImg = "assets/ images / article_3.png";
        break;
    }
    return Container(
      padding: const EdgeInsets.only(left: 6),
      width: size.width * .85,
      height: 160,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        shadowColor: const Color.fromARGB(255, 235, 244, 254),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                  image: AssetImage(bgImg),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundColor: profilePhoto.isNotEmpty
                        ? Colors.black
                        : Colors.lightBlue,
                    child: profilePhoto.isNotEmpty
                        ? Container(
                            color: Colors.transparent,
                            child: ClipOval(
                              child: Image.asset(
                                profilePhoto,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        : const Icon(Icons.person),

                    // child: profilePhoto.isNotEmpty
                    //     ? Image.asset(profilePhoto)
                    //     : const Icon(Icons.person),
                  ),
                  const SizedBox(width: 8.0),
                  Expanded(
                    child: Text(
                      authorName,
                      style: const TextStyle(shadows: [
                        Shadow(
                          color: Colors.black,
                          offset: Offset(1, 2),
                          blurRadius: 5,
                        )
                      ], fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: IconButton(
                icon: Icon(
                  isStarred ? Icons.star : Icons.star,
                  color: isStarred ? Colors.yellow : null,
                ),
                onPressed: () {
                  // Handle star button press
                },
              ),
            ),
            Positioned(
              left: 0,
              bottom: 0,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Text(
                  title,
                  style: const TextStyle(shadows: [
                    Shadow(
                      color: Colors.black,
                      offset: Offset(2, 2),
                      blurRadius: 3,
                    )
                  ], fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
