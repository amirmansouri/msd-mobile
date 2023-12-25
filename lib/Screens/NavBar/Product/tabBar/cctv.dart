import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CcTv extends StatefulWidget {
  const CcTv({super.key});

  @override
  State<CcTv> createState() => _CcTvState();
}

class _CcTvState extends State<CcTv> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SvgPicture.asset('assets/icon/navBar/search.svg',color: Color(0xFFD9DBE9),width: 103,height: 99,),
             Text("No results",style: TextStyle(color: Color(0xFF6E7191),fontSize: 20,fontFamily: "Poppins",fontWeight: FontWeight.bold)),
             Text("Please refine your search",style: TextStyle(color: Color(0xFFA0A3BD),fontSize: 14,fontFamily: "Poppins"))
             
           ],
        ),
      ),
    );
  }
}
