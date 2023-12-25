import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msd/Screens/NavBar/Home/notification.dart';

class Inbox extends StatefulWidget {
  const Inbox({super.key});

  @override
  State<Inbox> createState() => _InboxState();
}

class _InboxState extends State<Inbox> {
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
            'Inbox',
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
              onTap: (){
                Navigator.push(context,MaterialPageRoute(builder:  (context) => NotificationMsd(),));
              },
              child: SvgPicture.asset('assets/icon/notif.svg')),
        ),
      ],
    ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("New",style: TextStyle(color: Color(0xFFA0A3BD),fontFamily: 'Poppins',fontWeight: FontWeight.w400,fontSize: 20),),
          ),
         Expanded(
           child: SizedBox(
             width: double.infinity,
             height: 150,
             child: ListView.builder(itemCount: 5,shrinkWrap: true,itemBuilder: (context, index) {
               return  Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                   crossAxisAlignment: CrossAxisAlignment.center,
                   children: [
                     SvgPicture.asset(
                       'assets/icon/pdf.svg',
                       width: 35,
                       height: 35,
                     ),
                     Padding(
                       padding:
                       const EdgeInsets.only(left: 18.0, top: 10),
                       child: Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Quotation for Cámara Bullet HDTVI Gama Value',
                               style: TextStyle(
                                   fontFamily: 'Poppins',
                                   fontWeight: FontWeight.w500,
                                   fontSize: 12,
                                   color: Color(0xFF6E7191))),
                           Text('PDF File',
                               style: TextStyle(
                                   fontFamily: 'Poppins',
                                   fontWeight: FontWeight.w400,
                                   fontSize: 12,
                                   color: Color(0xFFA0A3BD)))
                         ],
                       ),
                     )
                   ],
                 ),
               );
             },),
           ),
         )
        ],
      ),
    );
  }
}
