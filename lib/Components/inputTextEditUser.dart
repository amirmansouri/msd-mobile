import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget inputTextEditUser({
  required String label,
  required double width,
  required double height,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: TextField(
      onSubmitted: (value) {},
      decoration: InputDecoration(
        label: Text(label,
            style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                color: Color(0xFF777777),
                fontSize: 12)),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        filled: true,
        fillColor: const Color(0xFFFFFFFF),
      ),
    ),
  );
}
