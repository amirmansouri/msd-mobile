import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msd/Components/PrimaryButton.dart';
import 'package:msd/Screens/Authentification/AllowLocation/saveLocation.dart';

class AllowLocation extends StatefulWidget {
  const AllowLocation({super.key});

  @override
  State<AllowLocation> createState() => _AllowLocationState();
}

class _AllowLocationState extends State<AllowLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            Positioned(
                bottom: 530,
                child: SvgPicture.asset(
                  'assets/images/rectangle1.svg',
                  color: const Color(0xFFF5F6FF),
                )),
            Positioned(
                top: 560,
                left: 200,
                child: SvgPicture.asset(
                  'assets/images/rectangle2.svg',
                  color: const Color(0xFFF9F0B8),
                )),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SvgPicture.asset(
                    'assets/icon/location.svg',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Allow location tracking",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0A0D14),
                          fontSize: 20,fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text('The location will help us suggesting stores',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7191),
                          fontSize: 14)),
                  const Text('and offers nearby ',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7191),
                          fontSize: 14)),
                  const SizedBox(height: 20),
                  primaryButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SaveLocation(),
                            ));
                      },
                      text: "Allow",
                      height: 64,
                      width: 325)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
