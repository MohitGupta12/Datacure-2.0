import 'package:dc/pages/getting_started/widget/custom_header_text.dart';
import 'package:dc/pages/getting_started/widget/custom_text.dart';
import 'package:flutter/material.dart';

class GettingStartedScreen extends StatelessWidget {
  const GettingStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 67, 93),
      body: Stack(
        children: [
          const Align(
            alignment: Alignment.topCenter,
            child: CustomHeaderClass(
                textContent: 'DataCure',
                colors: Color.fromARGB(255, 255, 255, 255),
                padding: 50),
          ),
          Positioned(
            left: 10,
            top: 200,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CustomText(padding: 7, textContent: "Innovating"),
                CustomText(
                    textContent: "HealthCare",
                    bold: FontWeight.w500,
                    height: 55),
                // CustomText(textContent: "one"),
                CustomText(
                  textContent: "one BlockChain",
                  height: 40,
                  // bold: FontWeight.bold,
                  colors: Color.fromARGB(255, 40, 116, 215),
                ),
                CustomText(
                  textContent: "at a TIME",
                  height: 43,
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 250,
              padding: const EdgeInsets.all(20.0),
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    child: ElevatedButton(
                      //child: Button(),

                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const Signup()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        minimumSize: const Size(0, 5),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        backgroundColor: const Color(0xff2d3c4e),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 1.0),
                          child: Text('Get Started',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 60),
                    child: ElevatedButton(
                      //child: Button(),
                      onPressed: () {
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const LoginPage()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        elevation: 5,
                        minimumSize: const Size(0, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40)),
                        backgroundColor:
                            const Color.fromARGB(255, 155, 200, 255),
                      ),
                      child: const Center(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: 16.0, horizontal: 20.0),
                          child: Text('Login',
                              style: TextStyle(
                                  fontSize: 24.0,
                                  color: const Color(0xff2d3c4e),
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
