import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msd/Screens/Checkout/checkoutSuccess.dart';

class Processing extends StatefulWidget {
  const Processing({super.key});

  @override
  State<Processing> createState() => _ProcessingState();
}

class _ProcessingState extends State<Processing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            InkWell(
                onTap: () {
Navigator.push(context,MaterialPageRoute(builder: (context) => Success(),));
                },
                child: SvgPicture.asset('assets/icon/processing.svg')),
            SizedBox(height: 20,),
            Text(
              'Processing ..',
              style: TextStyle(
                color: Color(0xFF6E7191),
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
            Text(
              'Please wait',
              style: TextStyle(
                color: Color(0xFFA0A3BD),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
          ],
        ),
      ),
    );
  }
}
