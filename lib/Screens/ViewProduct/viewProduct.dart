import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msd/Components/PrimaryButton.dart';

import '../NavBar/navBarClass.dart';
import 'cartScreen.dart';

class ViewProduct extends StatefulWidget {
  const ViewProduct({super.key});

  @override
  State<ViewProduct> createState() => _ViewProductState();
}

class _ViewProductState extends State<ViewProduct> {
  int counter = 0;

  final _scaffoldKey = GlobalKey<ScaffoldState>();

  void incrementCounter() {
    setState(() {
      counter++;
    });
  }

  void decrementCounter() {
    setState(() {
      if (counter > 0) {
        counter--;
      }
    });
  }

  void listProductInCart(BuildContext context) async {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Container(
            width: double.infinity,
            height: 349,
            color: Colors.white,
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        'Request Quote',
                        style: TextStyle(
                            color: Color(0xFF4E4B66),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            fontFamily: "Poppins"),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Icon(Icons.close)),
                    )
                  ],
                ),
                SvgPicture.asset('assets/icon/addToCart.svg'),
                Padding(
                  padding: const EdgeInsets.only(top: 40.0, bottom: 5),
                  child: Text(
                    'Quote request placed',
                    style: TextStyle(
                        color: Color(0xFF6E7191),
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "Poppins"),
                  ),
                ),
                Text(
                  'We will notify you soon about the quotation',
                  style: TextStyle(
                      color: Color(0xFFA0A3BD),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      fontFamily: "Poppins"),
                ),
                Spacer(),
                primaryButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NavBar(),
                          ));
                    },
                    text: 'Continue shopping',
                    width: 260,
                    height: 64)
              ],
            ));
      },
    );
  }

  // void listProductInCart2(BuildContext context) {
  //   showModalBottomSheet(
  //
  //     context: context,
  //     builder: (BuildContext context) {
  //       return Container(
  //           width: double.infinity,
  //           height: 349,
  //           color: Colors.white,
  //           child: Column(
  //             children: [
  //               Row(
  //                 children: [
  //                   Padding(
  //                     padding: const EdgeInsets.all(10.0),
  //                     child: Text(
  //                       'Request Quote',
  //                       style: TextStyle(
  //                           color: Color(0xFF4E4B66),
  //                           fontSize: 12,
  //                           fontWeight: FontWeight.w600,
  //                           fontFamily: "Poppins"),
  //                     ),
  //                   ),
  //                   Spacer(),
  //                   Padding(
  //                     padding: const EdgeInsets.all(10.0),
  //                     child: InkWell(
  //                         onTap: () {
  //                           Navigator.pop(context);
  //                         },
  //                         child: Icon(Icons.close)),
  //                   )
  //                 ],
  //               ),
  //               SizedBox(
  //                 width: 329,
  //                 height: 200,
  //                 child: Expanded(
  //                   child: ListView.builder(
  //                     shrinkWrap: true,
  //                     itemCount: 3,
  //                     itemBuilder: (context, index) {
  //                       return Row(
  //                         children: [
  //                           Container(
  //                             height: 62,
  //                             width: 61,
  //                             child: Image.asset('assets/images/cam.png'),
  //                           ),
  //                           Column(
  //                             crossAxisAlignment: CrossAxisAlignment.start,
  //                             children: [
  //                               Text('DS-2CE10KF3T',
  //                                   style: TextStyle(
  //                                       fontFamily: 'Poppins',
  //                                       fontSize: 12,
  //                                       color: Color(0xFF4E4B66))),
  //                               Text(
  //                                 "974.00 TND",
  //                                 style: TextStyle(
  //                                     fontFamily: 'Poppins',
  //                                     fontSize: 8,
  //                                     color: Color(0xFF6E7191)),
  //                               )
  //                             ],
  //                           ),
  //                           Spacer(),
  //                           Row(
  //                             mainAxisAlignment: MainAxisAlignment.center,
  //                             children: [
  //                               InkWell(
  //                                 onTap: () {
  //                                   decrementCounter();
  //                                   print(counter);
  //                                 },
  //                                 child: Container(
  //                                   child: Center(
  //                                     child: Icon(
  //                                       Icons.remove,
  //                                       color: Color(0xFFA0A3BD),
  //                                     ),
  //                                   ),
  //                                   decoration: BoxDecoration(
  //                                       borderRadius: BorderRadius.circular(30),
  //                                       border: Border.all(
  //                                           color: Color(0xFFA0A3BD),
  //                                           width: 2)),
  //                                 ),
  //                               ),
  //                               Text('${counter}',
  //                                 style: TextStyle(fontSize: 24),
  //                               ),
  //                               SizedBox(width: 16),
  //                               InkWell(
  //                                 onTap: () {
  //                                   incrementCounter();
  //                                   print(counter);
  //                                 },
  //                                 child: Container(
  //                                   child: Center(
  //                                     child: Icon(
  //                                       Icons.add,
  //                                       color: Color(0xFF4E4B66),
  //                                     ),
  //                                   ),
  //                                   decoration: BoxDecoration(
  //                                       borderRadius: BorderRadius.circular(30),
  //                                       border: Border.all(
  //                                           color: Color(0xFF4E4B66),
  //                                           width: 2)),
  //                                 ),
  //                               ),
  //                             ],
  //                           )
  //                         ],
  //                       );
  //                     },
  //                   ),
  //                 ),
  //               ),
  //               Spacer(),
  //               primaryButton(
  //                   onPressed: () {
  //                     Navigator.push(
  //                         context,
  //                         MaterialPageRoute(
  //                           builder: (context) => NavBar(),
  //                         ));
  //                   },
  //                   text: 'Proceed to checkout',
  //                   width: 260,
  //                   height: 64)
  //             ],
  //           ));
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF222C60),
      appBar: AppBar(
        backgroundColor: Color(0xFF222C60),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Stack(
                children: [
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(48),
                        color: Color(0xFFFBE30)),
                  ),
                  Center(
                    child: SvgPicture.asset(
                      'assets/icon/arrow-left.svg',
                      color: Colors.white,
                      height: 30,
                      width: 30,
                    ),
                  ),
                ],
              )),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Stack(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(48),
                      color: Color(0xFFFBE21)),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset(
                      'assets/icon/favoritProduct.svg',
                      color: Color(0xFFED2E7E),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            width: double.infinity,
            height: 189.39,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset('assets/icon/chevron-left.svg',
                    width: 24, height: 24),
                Flexible(
                  child: Container(
                    width: 200,
                    height: 200.39,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.yellow.withOpacity(0.2),
                          // Adjust the opacity of the shadow
                          spreadRadius: -1,
                          blurRadius: 80,
                          // Adjust the blur radius for a smaller shadow
                          offset: Offset(30,
                              5), // Adjust the offset for the shadow's position
                        ),
                      ],
                    ),
                    child: Image.asset("assets/images/cam.png"),
                  ),
                ),
                SvgPicture.asset('assets/icon/chevron-right.svg',
                    width: 24, height: 24),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'DS-2CE10KF3T',
                          style: TextStyle(
                              color: Color(0xFFEFF0F6),
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        ),
                        Container(
                          width: 61,
                          height: 20,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(39),
                              color: Color(0xFF00BA88)),
                          child: Center(
                              child: Text(
                            'in stock',
                            style: TextStyle(
                                color: Color(0xFFF5F6FF),
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w500,
                                fontSize: 10),
                          )),
                        )
                      ],
                    ),
                    Text(
                      'Cámara Bullet HDTVI\nGama Value',
                      style: TextStyle(
                          color: Color(0xFFA0A3BD),
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          fontSize: 10),
                    )
                  ],
                ),
                Container(
                  width: 90,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color(0xFFFBE30),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Starting from',
                        style: TextStyle(
                            color: Color(0xFFA0A3BD),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            fontSize: 10),
                      ),
                      Text(
                        '987 DT',
                        style: TextStyle(
                            color: Color(0xFFFBE216),
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w700,
                            fontSize: 20),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10),
                      child: Text(
                        "Product description",
                        style: TextStyle(
                            color: Color(0xFF4E4B66),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        width: double.infinity,
                        height: 150,
                        child: Text(
                          'The Thermal and Optical Bi-Spectrum Network Bullet Camera is a cutting-edge surveillance device equipped with advanced features for comprehensive security monitoring. Leveraging a sophisticated deep learning algorithm, it incorporates behavior analysis functions such as line crossing, intrusion detection, and region entry and exit tracking, providing a proactive approach to security. One of its standout features is the temperature exception alarm, enabling timely response to anomalies in thermal patterns. Additionally, the camera boasts a fire detection algorithm, enhancing its utility in critical scenarios. ',
                          maxLines: 100,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                              wordSpacing: 2,
                              fontSize: 10,
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Poppins'),
                          textAlign: TextAlign.justify,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Specifications",
                        style: TextStyle(
                            color: Color(0xFF4E4B66),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                      child: Row(
                        children: [
                          Text("Marca",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA0A3BD))),
                          Spacer(),
                          Text("Imou",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA0A3BD)))
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      endIndent: 30,
                      indent: 30,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                      child: Row(
                        children: [
                          Text("Modelo",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA0A3BD))),
                          Spacer(),
                          Text("IPC-F46FP-IMOU / Bullet 2S 4MP",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA0A3BD)))
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      endIndent: 30,
                      indent: 30,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                      child: Row(
                        children: [
                          Text("Sensor de imagen",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA0A3BD))),
                          Spacer(),
                          Text("1/2.7” Progressive Scan CMOS",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA0A3BD)))
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      endIndent: 30,
                      indent: 30,
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30.0, right: 30, top: 10),
                      child: Row(
                        children: [
                          Text("Codificación main stream",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA0A3BD))),
                          Spacer(),
                          Text("1920 x 1080 30fps (2MP)",
                              style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                  color: Color(0xFFA0A3BD)))
                        ],
                      ),
                    ),
                    Divider(
                      height: 10,
                      endIndent: 30,
                      indent: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Text(
                        "Downloads",
                        style: TextStyle(
                            color: Color(0xFF4E4B66),
                            fontSize: 15,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Poppins'),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Container(
                        width: 342,
                        height: 56,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              'assets/icon/pdf.svg',
                              width: 25,
                              height: 25,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 18.0, top: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Product specifications',
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
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          child: SvgPicture.asset('assets/icon/addToCart.svg'),
                          onTap: () {
                            listProductInCart(context);
                          },
                        ),
                        SizedBox(width: 30),
                        primaryButton(
                            onPressed: () {
                              listProductInCart2(context);
                            },
                            text: 'Add to cart',
                            width: 260,
                            height: 64),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
