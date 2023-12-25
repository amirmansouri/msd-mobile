import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

Widget inputText({
  required String hintText,
  required double width,
  required double height,
   String? svgPicture,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: TextField(
      onSubmitted: (value) {},
      decoration: InputDecoration(
        hintStyle:
            GoogleFonts.poppins(color: const Color(0xFF6E7191), fontSize: 14),
        hintText: hintText,
        prefixIcon: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SvgPicture.asset(svgPicture!),
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16)),
        filled: true,
        fillColor: const Color(0xFFEFF0F6),
      ),
    ),
  );
}
