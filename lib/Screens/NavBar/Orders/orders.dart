import 'package:flutter/material.dart';

import '../../../Components/Orders/purchaseComponent.dart';



class Orders extends StatefulWidget {
  const Orders({super.key});

  @override
  State<Orders> createState() => _OrdersState();
}

class _OrdersState extends State<Orders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        // appBar: appBar(
        //   shortUserName: "AM",
        //   userName: "Amir Mansouri",
        //   company: "SasCode Company",
        //   actionSvg: "assets/icon/actionAppBar.svg",
        //   tapInbox: () {},
        // ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 30, bottom: 30),
              child: Row(
                children: [
                  Text(
                    'Orders',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF6E7191),
                        fontWeight: FontWeight.w500),
                  ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 30.0),
                    child: Text(
                      'Pending Orders',
                      style: TextStyle(
                          fontFamily: 'Poppins',
                          fontSize: 12,
                          color: Color(0xFFF4B740),
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: 74,
                width: 338,
                child: ListView.separated(
                  itemCount: 12,
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return purchaseList();
                  },
                  separatorBuilder: (BuildContext context, int index) =>
                      SizedBox(
                    height: 20,
                  ),
                ),
              ),
            )
          ],
        ));
  }
}
