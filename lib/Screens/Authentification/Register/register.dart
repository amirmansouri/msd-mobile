import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msd/Components/PrimaryButton.dart';
import 'package:msd/Components/inputText.dart';

import '../Verify Account/verify.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox(
        width: MediaQuery
            .of(context)
            .size
            .width,
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
                  const Padding(
                    padding: EdgeInsets.only(left: 60),
                    child: Row(
                      children: [
                        Text("Create an account",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0A0D14),
                                fontSize: 20,fontWeight: FontWeight.w500)),
                      ],
                    ),
                  ),

                  const SizedBox(height: 20),
                  inputText(hintText: 'Full name',
                      width: 325,
                      height: 48,
                      svgPicture: 'assets/icon/user.svg'),

                  const SizedBox(height: 10),
                  inputText(hintText: 'Email',
                      width: 325,
                      height: 48,
                      svgPicture: 'assets/icon/email.svg'),
                  const SizedBox(height: 10),
                  inputText(hintText: 'Phone number',
                      width: 325,
                      height: 48,
                      svgPicture: 'assets/icon/call.svg'),
                  const SizedBox(height: 10,),
                  inputText(hintText: '*********',
                      width: 325,
                      height: 48,
                      svgPicture: 'assets/icon/lock.svg'),

                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      onTap: () {
                        print('Forgot Password?');
                      },
                      child: const Text('Forgot Password?',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal)),
                    ),
                  ),
                  primaryButton(onPressed: () {
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) => const Verify(),));
                  }, text: "sign Up", height: 64, width: 325,),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      onTap: () {
                        print('Or');
                      },
                      child: const Text('Or',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal)),
                    ),
                  ),


                  InkWell(
                    onTap: () {
                      print('connect with google');
                    },
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/icon/google.svg'),
                          const SizedBox(width: 100),
                          const Text(
                            'Sign up With Google',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Color(0xFF0A0D14)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  InkWell(
                    onTap: () {
                      print('connect with apple');
                    },
                    child: SizedBox(
                      width: 300,
                      height: 50,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SvgPicture.asset('assets/icon/apple.svg'),
                          const SizedBox(width: 100),
                          const Text(
                            'Sign up With Apple',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Color(0xFF0A0D14)),
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

    );
  }
}
