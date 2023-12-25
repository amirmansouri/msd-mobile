import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msd/Components/PrimaryButton.dart';

import '../../NavBar/navBarClass.dart';


class SaveLocation extends StatefulWidget {
  const SaveLocation({super.key});

  @override
  State<SaveLocation> createState() => _AllowLocationState();
}

class _AllowLocationState extends State<SaveLocation> {
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
                    'assets/icon/saveLocation.svg',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("Save this device",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0A0D14),
                          fontSize: 20,fontWeight: FontWeight.w600)),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text('Save this device for future login and to secure',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7191),
                          fontSize: 14)),
                  const Text('your account',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7191),
                          fontSize: 14)),
                  const SizedBox(height: 20),
                  primaryButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar(),));
                  }, text: "Save this device",  height: 64,
                    width: 325,),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
