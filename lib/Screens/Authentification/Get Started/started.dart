import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msd/Screens/Authentification/Login/login.dart';

class Started extends StatefulWidget {
  const Started({super.key});

  @override
  State<Started> createState() => _StartedState();
}

class _StartedState extends State<Started> {
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
                  const Text("Let's Get Started",
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF0A0D14),
                          fontSize: 24,fontWeight: FontWeight.w400)),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text('Find the right product and what you want',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7191),
                          fontSize: 14)),
                  const Text('only in MSD Myapp',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          color: Color(0xFF6E7191),
                          fontSize: 14)),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 325,
                    height: 48,
                    child: TextField(
                      onSubmitted: (value) {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const Login(),));
                      },
                      decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(
                            color: const Color(0xFF6E7191), fontSize: 14),
                        hintText: 'Your email',
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SvgPicture.asset('assets/icon/email.svg'),
                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius: BorderRadius.circular(16)),
                        filled: true,
                        fillColor: const Color(0xFFEFF0F6),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(50),
                    child: Text('Or Use Instant Sign Up',
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.normal)),
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                    height: 10,
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
                        mainAxisAlignment: MainAxisAlignment.center,
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
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Already Have an Account ?",
                        style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Color(0xFF777B8A)),
                      ),
                      InkWell(
                          onTap: () {},
                          child: const Text(
                            " Sign In",
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
