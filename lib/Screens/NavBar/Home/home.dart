import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:msd/Components/Home/appBar.dart';
import 'package:msd/Components/Home/browseProduct.dart';
import 'package:msd/Screens/NavBar/Home/inbox.dart';
 import 'package:msd/Components/Home/widgetNewProduct.dart';
 import 'package:msd/Screens/ViewProduct/viewProduct.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
int stock = 1;
List<Color> colorContainer = [
  Color(0xFF34A853),
  Colors.yellow,
  Colors.red,
  Colors.white,
];

Color container1 = colorContainer[0];
Color container2 = colorContainer[0];
Color container3 = colorContainer[0];

getColor() {
  if (stock > 100) {
    container1 = container2 = container3 = colorContainer[0];
    print("case 1");
  } else if (stock <= 100 && stock > 50) {
    container1 = container2 = colorContainer[1];
    container3 = colorContainer[3];
    print("case 2");
  } else {
    container1 = colorContainer[2];
    container3 = container2 = colorContainer[3];
    print("case 3");
  }
}
class _HomeState extends State<Home> {
  @override
  void initState() {
    getColor();
    super.initState();
  }

  void updateStock(int newStock) {
    setState(() {
      stock = newStock;
      getColor();
    });
  }
  Widget build(BuildContext context) {
    updateStock(500);
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: appBar(
      //   shortUserName: "AM",
      //   userName: "Amir Mansouri",
      //   company: "SasCode Company",
      //   actionSvg: "assets/icon/actionAppBar.svg",
      //   tapInbox: () {
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(builder: (context) => Inbox()),
      //     );
      //   },
      // ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: newProductPub(
                descProduct: 'ColorVu Series HDTVI \n Bullet Camera',
                textButtonShowProduct: 'View product',
                imageProduct: 'assets/images/cam.png',
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Browse products",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    color: Color(0xFF4E4B66),
                  ),
                ),
                const SizedBox(width: 200),
                const Text(
                  "View all",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: Color(0xFF6E7191),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: double.infinity,
              height: 150,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 13,
                itemBuilder: (BuildContext context, int index) {
                  return browseProduct(
                    image: 'assets/images/cam.png',
                    idCamera: 'DS-2CE10KF3T',
                    shortDescriptionCamera: 'Cámara Bullet HDTVI',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ViewProduct()),
                      );
                    }, colorContainer1: container1, colorContainer2:container2, colorContainer3:container3,
                  );
                },
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Browse by category",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 16,
                    color: Color(0xFF4E4B66),
                  ),
                ),
                const SizedBox(width: 170),
                const Text(
                  "View all",
                  style: TextStyle(
                    fontFamily: "Poppins",
                    fontSize: 12,
                    color: Color(0xFF6E7191),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    children: [
                        SvgPicture.asset('assets/icon/ctv.svg', width: 50),
                      const Text(
                        "CCTV IP",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          color:Color(0xFFA0A3BD),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        SvgPicture.asset('assets/icon/ctvAnalogique.svg', width: 50),
                      const Text(
                        "CCTV Analogique",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          color: Color(0xFFA0A3BD),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        SvgPicture.asset('assets/icon/video.svg', width: 50),
                      const Text(
                        "Video analysis",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          color: Color(0xFFA0A3BD),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      SvgPicture.asset('assets/icon/smartHome.svg', width: 50),
                      const Text(
                        "Smart Home",
                        style: TextStyle(
                          fontSize: 10,
                          fontFamily: 'Poppins',
                          color: Color(0xFFA0A3BD),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}