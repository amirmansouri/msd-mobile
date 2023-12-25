import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msd/Components/inputText.dart';
import 'package:msd/Screens/NavBar/Product/tabBar/allProduct.dart';
import 'package:msd/Screens/NavBar/Product/tabBar/cctv.dart';
import 'package:msd/Screens/NavBar/Product/tabBar/smartHome.dart';

import 'Filter/filter.dart';


class Product extends StatefulWidget {
  const Product({Key? key});

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final List<String> tabLabels = [
    'All',
    'CCTV Analogique',
    'Smart Home',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: tabLabels.length, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: appBar(
      //   shortUserName: "AM",
      //   userName: "Amir Mansouri",
      //   company: "SasCode Company",
      //   actionSvg: "assets/icon/actionAppBar.svg", tapInbox: () {  },
      // ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                inputText(
                  hintText: 'Find Product',
                  width: 300,
                  height: 48,
                  svgPicture: 'assets/icon/navBar/search.svg',
                ),
                SizedBox(width: 15),
                InkWell(
                  onTap: (){
                     Navigator.push(context,MaterialPageRoute(builder: (context) => Filters(),));
                  },
                  child: SvgPicture.asset(
                    'assets/icon/filter.svg',
                    width: 48,
                    height: 48,
                  ),
                ),
              ],
            ),
          ),
          TabBar(

            controller: _tabController,
            tabs: tabLabels.map((label) {
              final index = tabLabels.indexOf(label);
              return Tab(
                child: Container(
                  width: tabLabels[1] == 'All' ? 80 : 120,
                  child: Stack(
                    children: [
                      if (index == _tabController.index)
                        Center(
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(39),
                              color: Colors.yellow,
                            ),
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Center(
                              child: Text(
                                label,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Poppins',
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            height: 30,
                          ),
                        ),
                      if (index != _tabController.index)
                        Center(
                          child: Text(
                            label,
                            style: TextStyle(
                              color: Color(0xFFA0A3BD),
                              fontFamily: 'Poppins',
                              fontSize: 12,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              );
            }).toList(),
            onTap: (index) {
              // Handle tab selection
              setState(() {
                print(index);
                _tabController.index = index;
              });
            },
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // Replace with your page widgets for each tab
                AllProduct(),
                CcTv(),
                SmartHome(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

