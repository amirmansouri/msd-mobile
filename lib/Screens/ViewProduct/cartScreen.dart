import 'package:flutter/material.dart';
import 'package:msd/Screens/Checkout/chekout.dart';
import '../../Components/PrimaryButton.dart';

class CartBottomSheet extends StatefulWidget {
  @override
  _CartBottomSheetState createState() => _CartBottomSheetState();
}

class _CartBottomSheetState extends State<CartBottomSheet> {
  List<int> counters = [];

  void decrementCounter(int index) {
    setState(() {
      if (counters[index] > 0) {
        counters[index] = counters[index] - 1;
      }
    });
  }

  void incrementCounter(int index) {
    setState(() {
      counters[index] = counters[index] + 1;
    });
  }

  @override
  void initState() {
    super.initState();
    initializeCounters();
  }

  void initializeCounters() {
    final int itemCount = 100;
    counters = List<int>.filled(itemCount, 0);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 400,
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
                    fontFamily: "Poppins",
                  ),
                ),
              ),
              Spacer(),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.close),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 329,
            height: 200,
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Container(
                      height: 62,
                      width: 61,
                      child: Image.asset('assets/images/cam.png'),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'DS-2CE10KF3T',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 12,
                            color: Color(0xFF4E4B66),
                          ),
                        ),
                        // Text(
                        //   "974.00 TND",
                        //   style: TextStyle(
                        //     fontFamily: 'Poppins',
                        //     fontSize: 8,
                        //     color: Color(0xFF6E7191),
                        //   ),
                        // ),
                      ],
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            decrementCounter(index);
                            print(counters[index]);
                          },
                          child: Container(
                            child: Center(
                              child: Icon(
                                Icons.remove,
                                color: Color(0xFFA0A3BD),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color(0xFFA0A3BD),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 11.0),
                          child: Text(
                            '${counters[index]}',
                            style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Color(0xFF14142B)),
                          ),
                        ),
                        SizedBox(width: 16),
                        InkWell(
                          onTap: () {
                            incrementCounter(index);
                            print(counters[index]);
                          },
                          child: Container(
                            child: Center(
                              child: Icon(
                                Icons.add,
                                color: Color(0xFF4E4B66),
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              border: Border.all(
                                color: Color(0xFF4E4B66),
                                width: 2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                );
              },
            ),
          ),
          // Row(
          //   children: [
          //     Padding(
          //       padding: const EdgeInsets.all(8.0),
          //       child: Text(
          //         'Total to pay',
          //         style: TextStyle(
          //           color: Color(0xFF8F95AB),
          //           fontSize: 14,
          //           fontWeight: FontWeight.w400,
          //           fontFamily: "Poppins",
          //         ),
          //       ),
          //     ),
          //     Spacer(),
          //     Padding(
          //       padding: const EdgeInsets.all(18.0),
          //       child: Text(
          //         '2748 DT',
          //         style: TextStyle(
          //           color: Color(0xFF1E2644),
          //           fontSize: 14,
          //           fontWeight: FontWeight.w600,
          //           fontFamily: "Poppins",
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: primaryButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Checkout(),
                  ),
                );
              },
              text: 'Proceed to checkout',
              width: 260,
              height: 64,
            ),
          ),
        ],
      ),
    );
  }
}

void listProductInCart2(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return CartBottomSheet();
    },
  );
}
