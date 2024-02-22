import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msd/Screens/NavBar/Home/inbox.dart';

class NotificationMsd extends StatefulWidget {
  const NotificationMsd({super.key});

  @override
  State<NotificationMsd> createState() => _NotificationMsdState();
}

class _NotificationMsdState extends State<NotificationMsd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset(
                'assets/icon/arrow-left.svg',
                height: 48,
                width: 48,
              )),
        ),
        title: Center(
            child: Text(
          'Notifications',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Color(0xFF4E4B66),
              fontSize: 20),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Inbox(),
                      ));
                },
                child: SvgPicture.asset('assets/icon/msg.svg')),
          ),
        ],
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    'New',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF6E7191),
                        fontWeight: FontWeight.w500),
                  ),
                ),
                Flexible(
                  child: Text(
                    'Clear all',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        color: Color(0xFFED2E7E),
                        fontWeight: FontWeight.w400),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(child: SvgPicture.asset('assets/icon/notif2.svg')),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New training on sensors tech',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Color(0xFF515151),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '10:24 AM',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF9D9D9D),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 113,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xFFD9DBE9)),
                  ),
                  child: Center(
                    child: Text(
                      'View on website',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF222C60),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(child: SvgPicture.asset('assets/icon/notifprod.svg')),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Products',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Color(0xFF515151),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '10:24 AM',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF9D9D9D),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 113,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xFFD9DBE9)),
                  ),
                  child: Center(
                    child: Text(
                      'View',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF222C60),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
            child: Row(
              children: [
                Text(
                  'Last week',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF6E7191),
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(child: SvgPicture.asset('assets/icon/notif2.svg')),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New training on sensors tech',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Color(0xFF515151),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '10:24 AM',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF9D9D9D),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 113,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xFFD9DBE9)),
                  ),
                  child: Center(
                    child: Text(
                      'View on website',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF222C60),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                SizedBox(child: SvgPicture.asset('assets/icon/notif2.svg')),
                SizedBox(width: 10),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New training on sensors tech',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Color(0xFF515151),
                          fontWeight: FontWeight.w400),
                    ),
                    Text(
                      '10:24 AM',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF9D9D9D),
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                Spacer(),
                Container(
                  height: 30,
                  width: 113,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(40),
                    border: Border.all(color: Color(0xFFD9DBE9)),
                  ),
                  child: Center(
                    child: Text(
                      'View on website',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 10,
                          color: Color(0xFF222C60),
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
