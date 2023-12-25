import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:msd/Components/inputText.dart';

import '../../../../Components/inputTextEditUser.dart';

class User extends StatefulWidget {
  const User({super.key});

  @override
  State<User> createState() => _UserState();
}

class _UserState extends State<User> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Center(child: InkWell(
            onTap: (){
              Navigator.pop(context);
            },
            child: FaIcon(FontAwesomeIcons.arrowLeft,size: 18,color: Color(0xFF848484),))),
       title: Text(
         'My profile',
         style: TextStyle(
             fontSize: 14,
             color: Color(0xFF6E7191),
             fontFamily: 'Poppins',
             fontWeight: FontWeight.w600),
       ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack( 
                                 children: [ SizedBox(
                 width: 127,
                 height: 127,
                 child: Image.asset('assets/images/imageUser.png'),
                                 ),
                 Positioned(
                     width: 200,
                     height: 20,
                     top: 20,
                     child: SvgPicture.asset('assets/icon/edit_pen.svg'))


                                 ],
                ),
                Text(
                  'Amir Mansouri',
                  style: TextStyle(
                      fontSize: 18,
                      color: Color(0xFF1E2644),
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),
                ),
                SizedBox(height: 5,),
                Text(
                  'SasCode',
                  style: TextStyle(
                      fontSize: 12,
                      color: Color(0xFF6E7191),
                      fontWeight: FontWeight.w500,
                      fontFamily: 'Poppins'),
                ),
                SizedBox(height: 15,),
            Column(
              children: [
                inputTextEditUser( label: 'First name', width: 333, height: 44 ),
                Divider(),
                inputTextEditUser( label: 'Second name', width: 333, height: 44 ),
                Divider(),
                inputTextEditUser( label: 'Company', width: 333, height: 44 ),
                Divider(),
                inputTextEditUser( label: 'Address', width: 333, height: 44 ),
                Divider(),
                inputTextEditUser( label: 'Address', width: 333, height: 44 ),
                Divider(),
                inputTextEditUser( label: 'Phone number', width: 333, height: 44 ),
                Divider(),
                inputTextEditUser( label: 'Email', width: 333, height: 44 ),
                Divider(),
              ],
            )
            
            
              ],
            ),
          ),
        ),
      ),
    );
  }
}
