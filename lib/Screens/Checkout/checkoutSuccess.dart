 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
 import 'package:msd/Components/PrimaryButton.dart';

import '../NavBar/navBarClass.dart';

class Success extends StatelessWidget {
  const Success({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:SizedBox(
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 350,),
            InkWell(
              onTap: () {
                // Handle onTap action
              },
              child: SvgPicture.asset('assets/icon/success.svg'),
            ),
            SizedBox(height: 20),
            Text(
              'Success!',
              style: TextStyle(
                color: Color(0xFF6E7191),
                fontSize: 20,
                fontWeight: FontWeight.w600,
                fontFamily: "Poppins",
              ),
            ),
            Text(
              'Your order has been placed',
              style: TextStyle(
                color: Color(0xFFA0A3BD),
                fontSize: 14,
                fontWeight: FontWeight.w400,
                fontFamily: "Poppins",
              ),
            ),
            Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 64,
                    width: 158,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(40),
                      border: Border.all(color: Color(0xFF6E7191), width: 2),
                    ),
                    child: Center(
                      child: Text(
                        'Dismiss',
                        style: TextStyle(
                          color: Color(0xFF4E4B66),
                          fontWeight: FontWeight.w600,
                          fontSize: 16,
                          fontFamily: 'Poppins',
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  primaryButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => NavBar(),));
                    },
                    text: 'View order',
                    width: 158,
                    height: 64,
                  ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}
