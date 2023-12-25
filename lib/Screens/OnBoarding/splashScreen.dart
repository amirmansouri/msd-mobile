import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msd/Screens/OnBoarding/onBoardingPhase1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _Screen1State();
}

class _Screen1State extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 2),(){
      Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const OnBoarding1(),));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/msd.svg',
                  color: const Color(0xFFF5F6FF),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
              left: 0,
              bottom: 430,
              right: 180,
              child: SvgPicture.asset(
            'assets/images/rectangle1.svg',
            color: const Color(0xFFB1BDFF),
          )),
          Positioned(
              top: 450,
              left: 200,
              child: SvgPicture.asset(
                'assets/images/rectangle2.svg',
                color: const Color(0xFFC9B40E),
              )),
        ],
      ),
    );
  }
}
