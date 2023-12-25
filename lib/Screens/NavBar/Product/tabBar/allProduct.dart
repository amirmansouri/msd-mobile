import 'package:flutter/material.dart';
import 'package:msd/Components/Home/browseProduct.dart';

class AllProduct extends StatefulWidget {
  const AllProduct({Key? key}) : super(key: key);

  @override
  State<AllProduct> createState() => _AllProductState();
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

class _AllProductState extends State<AllProduct> {
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

  @override
  Widget build(BuildContext context) {
    updateStock(1);
    return Scaffold(
      backgroundColor: Colors.white,
      body: GridView.builder(
        itemCount: 100,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
        ),
        itemBuilder: (context, index) {
          return browseProduct(
            image: 'assets/images/cam.png',
            idCamera: 'DS-2CE10KF3T',
            shortDescriptionCamera: 'Cámara Bullet HDTVI',
            onTap: () {

            },
            colorContainer1: container1,
            colorContainer2: container2,
            colorContainer3: container3,
          );
        },
      ),
    );
  }
}