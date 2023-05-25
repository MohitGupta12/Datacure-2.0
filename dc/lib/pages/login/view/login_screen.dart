import 'package:flutter/material.dart';
import '../../getting_started/widget/custom_header_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    String error = '';
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff2d3c4e),
        child: Column(
          children: <Widget>[
            const SizedBox(
              height: 50,
            ),
            const Align(
              alignment: Alignment.topCenter,
              child: CustomHeaderClass(
                  textContent: 'DataCure',
                  colors: Color.fromARGB(255, 255, 255, 255),
                  padding: 50),
            ),
            Expanded(
                child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  )),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(30),
                  child: Column(
                    children: <Widget>[
                      const SizedBox(
                        height: 40,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(
                                              238, 238, 238, 1)))),
                              child: const TextField(
                                decoration: InputDecoration(
                                    hintText: "Enter your email",
                                    hintStyle: TextStyle(color: Colors.grey),
                                    border: InputBorder.none),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom: BorderSide(
                                          color: Color.fromRGBO(
                                              238, 238, 238, 1)))),
                              child: TextField(
                                obscureText: true,
                                decoration: InputDecoration(
                                    fillColor: Colors.grey.shade100,
                                    filled: false,
                                    hintText: 'Password',
                                    border: InputBorder.none),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      const Text(
                        "Forgot Password?",
                        style: TextStyle(color: Colors.grey),
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 90),

                        //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

                        child: ElevatedButton(
                          //child: Button(),
                          // // TODO: add onpressed function here
                          onPressed: () => {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //       builder: (context) => const HomeScreen()),
                            // )
                          },
                          // () async {
                          //   if (_formKey.currentState != null &&
                          //       _formKey.currentState!.validate()) {
                          //     dynamic result = await LoginController.instance
                          //         .loginUser(controller.email.text.trim(),
                          //             controller.password.text.trim());
                          //     if (result == null) {
                          //       setState(() => error =
                          //           'Could not login with given credentials');
                          //     }

                          //     // print("--------------------------------");
                          //     // print(result);
                          //     // print("--------------------------------");
                          //     // print(error);
                          //     // print("--------------------------------");
                          //   }
                          //   // Navigator.push(
                          //   //   context,
                          //   //   MaterialPageRoute(builder: (context) => const HomeScreen()),
                          //   // );
                          // },

                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(0, 40),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(40)),
                            backgroundColor: const Color(0xff2d3c4e),
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10.0, horizontal: 20.0),
                              child: Text('Login',
                                  style: TextStyle(fontSize: 20.0)),
                            ),
                          ),
                        ),
                        //~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
                      ),
                      const SizedBox(height: 12.0),
                      Text(
                        error,
                        style: const TextStyle(color: Colors.red, fontSize: 14),
                      ),
                      Container(
                        padding: const EdgeInsetsDirectional.only(
                          top: 30,
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 80),
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                SizedBox(
                                    height: 60,
                                    width: 60,
                                    child:
                                        Image.asset('assets/logo/google.png')),
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
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
