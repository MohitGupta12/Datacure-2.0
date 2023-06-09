import 'package:flutter/material.dart';
import '../../main_screen.dart';
import '../widget/InputField_signup.dart';
import '../widget/custom_header_text.dart';

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          color: const Color(0xff2d3c4e),
          child: Column(
            children: [
              const Align(
                alignment: Alignment.topCenter,
                child: CustomHeaderClass(
                    textContent: 'DataCure',
                    colors: Color.fromARGB(255, 255, 255, 255),
                    padding: 55,
                    size: 50),
              ),
              Container(
                height: 650,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                child: SingleChildScrollView(
                  child: Container(
                    padding: const EdgeInsetsDirectional.only(top: 20),
                    child: Column(
                      children: [
                        const InputFieldSignup(
                            labelText: "Name", icon: Icons.person),
                        const InputFieldSignup(
                            labelText: "Username", icon: Icons.abc),
                        const InputFieldSignup(
                            labelText: "Email", icon: Icons.mail),
                        const InputFieldSignup(
                          labelText: "Password",
                          icon: Icons.lock,
                          isPassword: true,
                        ),
                        const InputFieldSignup(
                            labelText: "Confirm Password",
                            icon: Icons.lock,
                            isPassword: true),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                              padding: const EdgeInsetsDirectional.only(
                                  top: 30, bottom: 0),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 100),
                              child: ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const MainScreen()),
                                  );
                                  // Navigator.push(
                                  //   context,
                                  //   MaterialPageRoute(
                                  //       builder: (context) => Signup()),
                                  // );
                                },
                                style: ElevatedButton.styleFrom(
                                  elevation: 5,
                                  minimumSize: const Size(0, 40),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(40)),
                                  backgroundColor: const Color(0xff2d3c4e),
                                ),
                                child: const Center(
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        vertical: 10.0, horizontal: 20.0),
                                    child: Text('Sign Up',
                                        style: TextStyle(
                                            fontSize: 14.0,
                                            color: Color.fromARGB(
                                                255, 255, 255, 255),
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ),
                              ),
                            ),
                            const Text("Already hav a account? login"),
                            Container(
                              padding: const EdgeInsetsDirectional.only(
                                top: 30,
                              ),
                              margin:
                                  const EdgeInsets.symmetric(horizontal: 100),
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
                                      const Color.fromARGB(255, 255, 255, 255),
                                ),
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      SizedBox(
                                          height: 60,
                                          width: 60,
                                          child: Image.asset(
                                              'assets/logo/google.png')),
                                      const Text('Google',
                                          style: TextStyle(
                                              fontSize: 24.0,
                                              color: Color(0xff2d3c4e),
                                              fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
