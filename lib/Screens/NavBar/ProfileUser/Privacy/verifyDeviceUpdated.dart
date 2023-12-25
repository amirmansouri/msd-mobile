import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msd/Components/PrimaryButton.dart';

class VerifyDeviceUpdated extends StatefulWidget {
  const VerifyDeviceUpdated({super.key});

  @override
  State<VerifyDeviceUpdated> createState() => _VerifyDeviceUpdatedState();
}

class _VerifyDeviceUpdatedState extends State<VerifyDeviceUpdated> {
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
        child:  Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 100,),
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
                    'The confimation code was \n'
                        'sent to +216 55 000 000',

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
              SizedBox(height: 50,),
              InkWell(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Text(
                  'Cancel',
                  style: TextStyle(
                      fontSize: 14,
                      color: Color(0xFF6E7191),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
