import 'package:flutter/material.dart';
import 'package:msd/Components/Home/navBar.dart';
import 'package:msd/Screens/NavBar/Home/notification.dart';
import 'package:msd/Screens/NavBar/ProfileUser/profileUser.dart';

import '../../../Components/Home/appBar.dart';
import 'Home/inbox.dart';
import 'Favorite/favorite.dart';
import 'Home/home.dart';
import 'Orders/orders.dart';
import 'Product/product.dart';


class NavBar extends StatefulWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;
  late PageController _pageController = PageController(initialPage: 0);

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _pageController.jumpToPage(index);
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar(
        shortUserName: "AM",
        userName: "Amir Mansouri",
        company: "SasCode Company",
        actionSvg: "assets/icon/actionAppBar.svg",
        tapInbox: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Inbox()),
          );
        }, onTapUser: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfileUser(),));
      }, notifSvg: 'assets/icon/notif.svg', tapnotif: () { Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => NotificationMsd()),
      ); },
      ) ,
      backgroundColor: Color(0xFFFFFFFF),
      body: PageView(
        controller: _pageController,
        children: [
          Home(),
          Product(),
          Favorite(),
          Orders(),
        ],
        onPageChanged: _onItemTapped,
      ),
      bottomNavigationBar: navBar(_selectedIndex, _onItemTapped),
    );
  }
}