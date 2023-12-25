import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../tabBar/allProduct.dart';
import '../tabBar/cctv.dart';
import '../tabBar/smartHome.dart';
import 'TabBar/allFilter.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> with SingleTickerProviderStateMixin{
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
          'Filters',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.bold,
              color: Color(0xFF4E4B66),
              fontSize: 20),
        )),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SvgPicture.asset('assets/icon/cam_filter.svg'),
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text('Product categories'),
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
               AllFilter(),
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
