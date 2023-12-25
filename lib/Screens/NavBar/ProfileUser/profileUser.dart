import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msd/Screens/NavBar/ProfileUser/Privacy/privacy.dart';
import 'package:msd/Screens/NavBar/ProfileUser/User/user.dart';

class ProfileUser extends StatefulWidget {
  const ProfileUser({super.key});

  @override
  State<ProfileUser> createState() => _ProfileUserState();
}

class _ProfileUserState extends State<ProfileUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                'assets/icon/arrow-left.svg',
                height: 48,
                width: 48,
              )),
        ),

      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: SizedBox(
                width: 127,
                height: 127,
                child: CircleAvatar(
                  backgroundColor: Color(0xFFED2E7E),
                  child: Text("AM",
                      style: TextStyle(color: Color(0xFFFCFCFC), fontSize: 40)),
                ),
              ),
            ),
            Text(
              'Amir Mansouri',
              style: TextStyle(
                  fontSize: 18,
                  color: Color(0xFF1E2644),
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600),
            ),
            Text(
              'SasCode',
              style: TextStyle(
                  fontSize: 12,
                  color: Color(0xFF6E7191),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => User(),));
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icon/user.svg',color: Color(0xFF222C60),),
                    SizedBox(width: 20),
                    Text(
                      'My profile',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6E7191),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: SvgPicture.asset('assets/icon/chevron-right.svg',color: Color(0xFF848484),width: 6,height: 12,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy(),));

                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/icon/lock2.svg',color: Color(0xFF222C60),),
                    SizedBox(width: 20),
                    Text(
                      'Privacy & security',
                      style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF6E7191),
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Poppins'),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: SvgPicture.asset('assets/icon/chevron-right.svg',color: Color(0xFF848484),width: 6,height: 12,),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SvgPicture.asset('assets/icon/information.svg',color: Color(0xFF222C60),),
                  SizedBox(width: 20),
                  Text(
                    'Help & support',
                    style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6E7191),
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins'),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: SvgPicture.asset('assets/icon/chevron-right.svg',color: Color(0xFF848484),width: 6,height: 12,),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
