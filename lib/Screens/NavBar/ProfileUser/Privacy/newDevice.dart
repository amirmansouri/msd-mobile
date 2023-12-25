import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msd/Components/PrimaryButton.dart';
import 'package:msd/Components/inputText.dart';
import 'package:msd/Screens/NavBar/ProfileUser/Privacy/verifyDeviceUpdated.dart';

class NewDevice extends StatefulWidget {
  const NewDevice({super.key});

  @override
  State<NewDevice> createState() => _NewDeviceState();
}

class _NewDeviceState extends State<NewDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: SvgPicture.asset('assets/icon/device.svg'),
            ),
            Text(
              'Add new number',
              style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF0A0D14),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w500),
            ),
            Text(
              'Please add your new number to proceed',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF0A0D14),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400),
            ),
            
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: inputText(hintText: 'Phone number', width: 325, height: 48,svgPicture: 'assets/icon/call.svg'),
            ),

            primaryButton(onPressed:(){

              Navigator.push(context,MaterialPageRoute(builder: (context) => VerifyDeviceUpdated(),));
            }, text: 'Send code', width: 325, height: 56)

          ],
        ),
      ),
    );
  }
}
