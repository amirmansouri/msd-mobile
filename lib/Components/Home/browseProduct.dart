import 'package:flutter/material.dart';

Widget browseProduct(
    {required String image,
    required String idCamera,
    required String shortDescriptionCamera,
    required Color colorContainer1,
    required Color colorContainer2,
    required Color colorContainer3,
    required Function() onTap}) {
  return InkWell(
    onTap: onTap,
    child: SizedBox(
      height: 200,
      width: 110,
      child: Column(
        children: [
          Expanded(
              child:
                  SizedBox(width: 75, height: 75, child: Image.asset(image))),
          Padding(
            padding:
                const EdgeInsets.only(bottom: 4, top: 7, right: 16, left: 16),
            child: SizedBox(
              width: 50,
              height: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: colorContainer1,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: colorContainer2,
                    ),
                  ),
                  Container(
                    width: 16,
                    height: 16,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      color: colorContainer3,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(idCamera,
              style: TextStyle(
                  fontFamily: 'Poppins',
                  fontSize: 12,
                  color: Color(0xFF4E4B66))),
          Text(
            shortDescriptionCamera,
            style: TextStyle(
                fontFamily: 'Poppins', fontSize: 8, color: Color(0xFF6E7191)),
          )
        ],
      ),
    ),
  );
}
