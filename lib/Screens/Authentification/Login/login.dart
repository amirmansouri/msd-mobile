import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msd/Components/PrimaryButton.dart';
import 'package:msd/Screens/Authentification/AllowLocation/allowLocation.dart';

import '../../../Components/inputText.dart';
import '../Register/register.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                  const Text("Hello Again!",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0A0D14),
                          fontSize: 24,fontWeight: FontWeight.w500)),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text('Welcome Back Yo’ve veen',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7191),
                          fontSize: 14)),
                  const Text('missed',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7191),
                          fontSize: 14)),
                  const SizedBox(height: 20),
                  inputText(hintText: "Email",width: 325,height: 48,svgPicture: 'assets/icon/email.svg'),
                  const SizedBox(height: 10,),
                  inputText(hintText: '********', width: 325, height: 48, svgPicture: 'assets/icon/lock.svg'),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      onTap: (){
                        print('Forgot Password?');
                      },
                      child: const Text('Forgot Password?',
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 12,
                              fontWeight: FontWeight.normal)),
                    ),
                  ),
                  primaryButton(onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => const AllowLocation(),));
                  }, text: "Login", height: 64, width: 325, ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: InkWell(
                      onTap: (){
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
                            'Sign With Google',
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
                            'Sign With Apple',
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                                color: Color(0xFF0A0D14)),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Dont Have Account?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Color(0xFF777B8A)),
                      ),
                      InkWell(
                          onTap:(){
                            Navigator.push(context,MaterialPageRoute(builder:(context) =>  const Register()));

                          },
                          child: const Text(
                            " Sign Up",
                            style: TextStyle(
                                color: Color(0xFF4D86FF),
                                fontFamily: 'Poppins',
                                fontSize: 12),
                          ))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
