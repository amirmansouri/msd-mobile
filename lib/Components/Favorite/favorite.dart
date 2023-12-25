import 'package:flutter/cupertino.dart';

Widget favoriteList(){

  return   Container(
    width: 338,
    height: 74,
    decoration: BoxDecoration(
        color: Color(0xFFF7F7FC), borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 61,
            height: 62,
            child: Image.asset('assets/images/cam.png'),
          ),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'DS-2CE10KF3T',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 12,
                    color: Color(0xFF4E4B66),
                    fontWeight: FontWeight.w500),
              ),
              Text(
                '2 Items',
                style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 8,
                    color: Color(0xFF6E7191),
                    fontWeight: FontWeight.w400),
              )
            ],
          ),
        ],
      ),
    ),
  );
}