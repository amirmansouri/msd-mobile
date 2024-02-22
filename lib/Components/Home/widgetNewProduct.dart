import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Widget newProductPub({
  required String descProduct,
  required String textButtonShowProduct,
  required String imageProduct,
  required BuildContext context,
}) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.9,
    height: 163,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: const Color(0xFF222C60)),
    child: Row(
      children: [
        Expanded(
          flex: 2,
          child: SizedBox(
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'New',
                    style: TextStyle(
                        color: Color(0xFFFBE216),
                        fontSize: 24,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    descProduct,
                    style: TextStyle(
                        color: Color(0xFFEFF0F6),
                        fontSize: 16,
                        fontFamily: 'Poppins'),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 150,
                    height: 32,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFBE216),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40),
                        ),
                      ),
                      child: Text(textButtonShowProduct,
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: const Color(0xFF222C60))),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: SizedBox(
              width: 135,
              height: 147,
              child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.yellow.withOpacity(0.3),
                            spreadRadius: 1,
                            blurRadius: 50,
                            offset: Offset(20, -10))
                      ]),
                  child: Image.asset(
                    imageProduct,
                  ))),
        )
      ],
    ),
  );
}
