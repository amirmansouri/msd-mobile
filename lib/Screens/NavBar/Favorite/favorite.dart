import 'package:flutter/material.dart';

import '../../../Components/Favorite/favorite.dart';
import '../../../Components/Orders/purchaseComponent.dart';



class Favorite extends StatefulWidget {
  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
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
                    'My favorite products',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Color(0xFF6E7191),
                        fontWeight: FontWeight.w500),
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
                    return favoriteList();
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
