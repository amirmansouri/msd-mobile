 import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget primaryButton({
  required Function() onPressed,
  required String text,
  required double width,
  required double height,
}) {
  return SizedBox(
    width: width,
    height: height,
    child: ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFF222C60),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text(text,
          style: GoogleFonts.poppins(
              fontSize: 16, color: const Color(0xFFF7F7FC))),
    ),
  );
}
