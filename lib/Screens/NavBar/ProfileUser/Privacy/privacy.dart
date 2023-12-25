import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'newDevice.dart';

class Privacy extends StatefulWidget {
  const Privacy({super.key});

  @override
  State<Privacy> createState() => _PrivacyState();
}

bool _isSwitchedAllowCollectData = false;

bool _isSwitchedSendEmail = false;

bool _isSwitchedRememberDevice = false;

bool _isSwitchedAllowTwoFactor = false;

class _PrivacyState extends State<Privacy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Center(
            child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                },
                child: FaIcon(
                  FontAwesomeIcons.arrowLeft,
                  size: 18,
                  color: Color(0xFF848484),
                ))),
        title: Text(
          'Privacy & Security',
          style: TextStyle(
              fontSize: 14,
              color: Color(0xFF6E7191),
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Data Privacy',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6E7191),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Allow the app to collect my data',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFA0A3BD),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Switch(
                  value: _isSwitchedAllowCollectData,
                  onChanged: (value) {
                    setState(() {
                      _isSwitchedAllowCollectData = value;
                    });
                  },
                  activeColor: Color(0xFFFFFFFF),
                  activeTrackColor: Color(0xFF0FF222C60),
                  inactiveThumbColor: Color(0xFFFFFFFF),
                  inactiveTrackColor: Color(0xFFD9DBE9),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Send  quotes and invoices to my email',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFA0A3BD),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Switch(
                  value: _isSwitchedSendEmail,
                  onChanged: (value) {
                    setState(() {
                      _isSwitchedSendEmail = value;
                    });
                  },
                  activeColor: Color(0xFFFFFFFF),
                  activeTrackColor: Color(0xFF0FF222C60),
                  inactiveThumbColor: Color(0xFFFFFFFF),
                  inactiveTrackColor: Color(0xFFD9DBE9),
                )
              ],
            ),
            SizedBox(height: 50),
            Text(
              'Login',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6E7191),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Remember this device',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFA0A3BD),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Switch(
                  value: _isSwitchedRememberDevice,
                  onChanged: (value) {
                    setState(() {
                      _isSwitchedRememberDevice = value;
                    });
                  },
                  activeColor: Color(0xFFFFFFFF),
                  activeTrackColor: Color(0xFF0FF222C60),
                  inactiveThumbColor: Color(0xFFFFFFFF),
                  inactiveTrackColor: Color(0xFFD9DBE9),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Allow two-factor authentication',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFFA0A3BD),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Switch(
                  value: _isSwitchedAllowTwoFactor,
                  onChanged: (value) {
                    setState(() {
                      _isSwitchedAllowTwoFactor = value;
                    });
                  },
                  activeColor: Color(0xFFFFFFFF),
                  activeTrackColor: Color(0xFF0FF222C60),
                  inactiveThumbColor: Color(0xFFFFFFFF),
                  inactiveTrackColor: Color(0xFFD9DBE9),
                )
              ],
            ),
            Text(
              'Saved devices',
              style: TextStyle(
                  fontSize: 14,
                  color: Color(0xFF6E7191),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  height: 72,
                  width: 72,
                  decoration: BoxDecoration(color: Color(0xFFD9DBE9),
                  borderRadius: BorderRadius.all(Radius.circular(12))
                  ),
                  child: Center(
                    child: SvgPicture.asset('assets/icon/device.svg'),
                  ),
                ),
                SizedBox(width: 10,),
                Column(
                  children: [

                    Text(
                      'Apple Iphone 13 PRO',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF14142B),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(height: 5,),
                    Text(
                      'IMEI: 524797461660332',
                      style: TextStyle(
                          fontSize: 12,
                          color: Color(0xFF4E4B66),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w500),
                    ),
SizedBox(height: 10,),
                    InkWell(
                      onTap: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context) => NewDevice(),));
                      },
                      child: Container(
                         width:121 ,
                        height:26 ,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(40),
                          color: Colors.white,
                          border: Border.all(color: Color(0xFF6E7191))
                        ),
                        child: Center(
                          child:  Text(
                            'Add new device',
                            style: TextStyle(
                                fontSize: 10,
                                color: Color(0xFF4E4B66),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),

            Spacer(),


            Center(
              child: Text(
                'Delete my account',
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
    );
  }
}
