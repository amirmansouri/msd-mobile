import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

typedef NavigationCallback = void Function(int);

Widget navBar(int selectedIndex, NavigationCallback onItemTapped) {
  return Padding(
    padding: const EdgeInsets.only(top: 16, bottom: 16, right: 8, left: 8),
    child: Container(
      height: 73,
      width: 339,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(117),
        color: Color(0xFFF5F6FF),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () => onItemTapped(0),
            child: Padding(
              padding: const EdgeInsets.only(top: 0, bottom: 0, right: 8, left: 8),
              child: SizedBox(
                width: 64,
                height: 57,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icon/navBar/home.svg', width: 24,height:24 ,color: selectedIndex == 0 ? Colors.blue : Color(0xFF222C60) ,),
                    Center(
                      child: Text(
                        'Home',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: selectedIndex == 0 ? Colors.blue : Color(0xFF222C60),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 16,),
          GestureDetector(
            onTap: () => onItemTapped(1),
            child: SizedBox(
              width: 64,
              height: 57,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(
                    child: SvgPicture.asset('assets/icon/navBar/search.svg', width: 24,height: 24,color: selectedIndex == 1 ? Colors.blue : Color(0xFF222C60)),
                  ),
                  Center(
                    child: Text(
                      'Products',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: selectedIndex == 1 ? Colors.blue : Color(0xFF222C60),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16,),
          GestureDetector(
            onTap: () => onItemTapped(2),
            child: SizedBox(
              width: 64,
              height: 57,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(
                    child: SvgPicture.asset('assets/icon/navBar/heart.svg', width: 24,height: 24,color: selectedIndex == 2 ? Colors.blue : Color(0xFF222C60)),
                  ),
                  Center(
                    child: Text(
                      'Favorites',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: selectedIndex == 2 ? Colors.blue : Color(0xFF222C60),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 16,),
          GestureDetector(
            onTap: () => onItemTapped(3),
            child: SizedBox(
              width: 64,
              height: 57,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  SizedBox(
                    child: SvgPicture.asset('assets/icon/navBar/basket.svg', width: 24,height: 24,color: selectedIndex ==3 ? Colors.blue : Color(0xFF222C60)),
                  ),
                  Center(
                    child: Text(
                      'Orders',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 10,
                        color: selectedIndex == 3 ? Colors.blue : Color(0xFF222C60),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    ),
  );
}