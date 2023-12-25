import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msd/Screens/OnBoarding/onBoardingPhase2.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

const bool isActive = false;

class _OnBoarding1State extends State<OnBoarding1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Positioned(
                  child: SvgPicture.asset('assets/images/rectangle1.svg',height:299,)),
            ],
          ),
          Container(child: const Spacer()),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              width: 450,
              height: 295,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0, bottom: 20),
                    child: SizedBox(
                        width: 325.0,
                        height: 72,
                        child: Center(
                            child: Text(
                          "Find Best security devices \n With Us",
                          style: GoogleFonts.poppins(
                              fontSize: 24, color: const Color(0xFF090F24)),
                        ))),
                  ),
                  SizedBox(
                    width: 325,
                    child: Row(
                      children: [
                        DotsIndicator(
                          dotsCount:2,
                          position: 0,
                          decorator: DotsDecorator(
                            size: const Size.square(9),
                            activeSize: const Size(20, 9),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5.0)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 64,
                    width: 325,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context,MaterialPageRoute(builder: (context)=>const OnBoarding2()) );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF222C60),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Text("Get started",
                          style: GoogleFonts.poppins(
                              fontSize: 16, color: const Color(0xFFF7F7FC))),
                    ),
                  ),
                  const SizedBox(height: 15,),
                  Text('Privacy Policy',style: GoogleFonts.poppins(fontSize: 12,color: const Color(0xFF777B8A)),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
