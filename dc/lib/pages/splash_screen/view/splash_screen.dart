import 'package:dc/pages/getting_started/view/getting_started_screen.dart';
import 'package:dc/pages/splash_screen/widget/custom_header_text.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// import 'package:datacure/screens/gettingStarted.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    try {
      // ignore: use_build_context_synchronously
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
              builder: (context) => const GettingStartedScreen()));
    } catch (e) {
      if (kDebugMode) {
        print("Not working ");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff2d3c4e),
      body: CustomHeaderClass(textContent: 'DataCure'),
    );
  }
}
