import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msd/Components/PrimaryButton.dart';

class Verify extends StatefulWidget {
  const Verify({super.key});

  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  List<String> verificationCode = ['', '', '', ''];

   void updateCode(int index, String value) {
    verificationCode[index] = value;
    if (value.isNotEmpty && index < verificationCode.length - 1) {
       FocusScope.of(context).nextFocus();
    } else if (value.isEmpty && index > 0) {
       FocusScope.of(context).previousFocus();
    }
  }

   void clearCode() {
    verificationCode = ['', '', '', ''];
  }

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
                  const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Verify your account",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0A0D14),
                                fontSize: 20,fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                        'The confirmation code was \n         '
                        'sent via email',
                        style: TextStyle(
                          wordSpacing: 3,
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,color: Color(0xFF303341))),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const SizedBox(height: 16),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            for (int i = 0; i < verificationCode.length; i++)
                              Container(
                                margin: const EdgeInsets.all(8),
                                width: 50,
                                height: 50,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xFFB5BBCF),
                                    width: 1.0,
                                  ),
                                  shape: BoxShape.circle,
                                ),
                                alignment: Alignment.center,
                                child: TextFormField(
                                  onChanged: (value) {
                                    updateCode(i, value);
                                  },
                                  keyboardType: TextInputType.number,
                                  maxLength: 1,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      fontSize: 24, color: Color(0xFFB5BBCF)),
                                  decoration: const InputDecoration(
                                    counterText: '',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                          ],
                        ),
                        const SizedBox(height: 16),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20, bottom: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Didn’t receive the code?",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF0A0D14),
                                fontSize: 12,fontWeight: FontWeight.w600)),
                        Text(" Resend ",
                            style: TextStyle(
                                fontFamily: 'Poppins',
                                color: Color(0xFF00BA88),
                                fontSize: 12,fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  primaryButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Verify(),
                          ));
                    },
                    text: "Reset Password",
                    height: 64,
                    width: 325,
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
