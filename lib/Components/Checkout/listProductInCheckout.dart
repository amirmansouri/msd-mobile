import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

Widget listProductInCheckout() {
  return Container(
    width: 338,
    height: 74,
    decoration: BoxDecoration(
        color: const Color(0xFFF7F7FC), borderRadius: BorderRadius.circular(12)),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 61,
            height: 62,
            child: Image.asset('assets/images/cam.png'),
          ),
          Spacer(),
          const Column(
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
          Spacer(),
          // const Text(
          //   '1784 DT',
          //   style: TextStyle(
          //       fontFamily: 'Poppins',
          //       fontSize: 14,
          //       color: Color(0xFF14142B),
          //       fontWeight: FontWeight.w600),
          // ),
          Spacer(),
          Padding(
            padding: const EdgeInsets.only(right: 18.0),
            child: Container(

              child: SvgPicture.asset(
                "trash.svg",
                width: 44,
                height: 44,
              ),
            ),
          )
        ],
      ),
    ),
  );
}
