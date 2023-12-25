// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:msd/Components/PrimaryButton.dart';
// import 'package:msd/Components/inputText.dart';
// import 'package:msd/Screens/Checkout/checkoutProcessing.dart';
//
// class CartBank extends StatefulWidget {
//   const CartBank({super.key});
//
//   @override
//   State<CartBank> createState() => _CartBankState();
// }
//
// class _CartBankState extends State<CartBank> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.white,
//       appBar: AppBar(
//         leading: Padding(
//           padding:  EdgeInsets.all(8.0),
//           child: InkWell(
//               onTap: () {
//                 Navigator.pop(context);
//               },
//               child: SvgPicture.asset(
//                 'assets/icon/arrow-left.svg',
//                 height: 48,
//                 width: 48,
//               )),
//         ),
//         title: const Center(
//             child: Text(
//               'Checkout',
//               style: TextStyle(
//                   fontFamily: 'Poppins',
//                   fontWeight: FontWeight.w600,
//                   color: Color(0xFF4E4B66),
//                   fontSize: 16),
//             )),
//
//       ),
//       body: Padding(
//         padding: const EdgeInsets.only(top: 50.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//
//           children: [
//             Center(
//               child: Container(
//                 height: 200,
//                 width: 350,
//                 decoration: BoxDecoration(
//                   color: Color(0xFF4E4B66),
//                   borderRadius: BorderRadius.circular(16),
//                 ),
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     const Row(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 40.0),
//                           child: Text(
//                             'Name',
//                             style: TextStyle(
//                               color: Color(0xFFFFFFFF),
//                               fontSize: 16,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: "Poppins",
//                             ),
//                           ),
//                         ),
//                         Spacer(),
//                         Padding(
//                           padding: EdgeInsets.all(18.0),
//                           child: Text(
//                             'Name Card',
//                             style: TextStyle(
//                               color: Color(0xFFFFFFFF),
//                               fontSize: 14,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: "Poppins",
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                       height: 56,
//                       width: 271,
//                       decoration: BoxDecoration(
//                         color: Color(0xFF8F95AB),
//                         borderRadius: BorderRadius.circular(15),
//                       ),
//                       child: Center(
//                         child: Text(
//                           '0000000000000000'
//                               .replaceAllMapped(RegExp(r".{4}"), (match) => "${match.group(0)} ")
//                               .trim(),
//                           style: const TextStyle(
//                             color: Color(0xFFFFFFFF),
//                             fontWeight: FontWeight.w500,
//                             fontSize: 20,
//                           ),
//                         ),
//                       ),
//                     ),
//                     const Row(
//                       children: [
//                         Padding(
//                           padding: EdgeInsets.only(left: 30.0),
//                           child: Text(
//                             'Card Holder Name',
//                             style: TextStyle(
//                               color: Color(0xFFFFFFFF),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: "Poppins",
//                             ),
//                           ),
//                         ),
//                         Spacer(),
//                         Padding(
//                           padding: EdgeInsets.all(18.0),
//                           child: Text(
//                             'Expery Date',
//                             style: TextStyle(
//                               color: Color(0xFFFFFFFF),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w500,
//                               fontFamily: "Poppins",
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       children: [
//                         Padding(
//                           padding: const EdgeInsets.only(left: 30.0),
//                           child: Text(
//                             'Name',
//                             style: TextStyle(
//                               color: Color(0xFFFFFFFF).withOpacity(0.5),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w400,
//                               fontFamily: "Poppins",
//                             ),
//                           ),
//                         ),
//                         Spacer(),
//                         Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: Text(
//                             '00/00',
//                             style: TextStyle(
//                               color: Color(0xFFFFFFFF).withOpacity(0.5),
//                               fontSize: 12,
//                               fontWeight: FontWeight.w400,
//                               fontFamily: "Poppins",
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(right: 18.0),
//                           child: Stack(
//                             children: [
//
//                               Container(
//                                 width: 28,
//                                 height: 28,
//                                 decoration: BoxDecoration(
//                                     borderRadius: BorderRadius.circular(20),
//                                     color: Color(0xFFFFFFFF).withOpacity(0.1)
//                                 ),
//                               ),
//
//                               Padding(
//                                 padding: const EdgeInsets.only(left: 28.0/2),
//                                 child: Container(
//                                   width: 28,
//                                   height: 28,
//                                   decoration: BoxDecoration(
//                                       borderRadius: BorderRadius.circular(20),
//                                       color: Color(0xFFFFFFFF).withOpacity(0.1)
//                                   ),
//                                 ),
//                               ),
//
//                             ],
//                           ),
//                         )
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 40.0,left: 55,bottom: 15),
//               child: Text(
//                 'Full Name',
//                 style: TextStyle(
//                   color: Color(0xFF6E7191),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                   fontFamily: "Poppins",
//                 ),
//               ),
//             ),
//             Center(
//               child:inputText(hintText: 'Card holder name', width: 333, height: 48, svgPicture: ''),
//             ),
//             const Padding(
//               padding: EdgeInsets.only(top: 20.0,left: 55,bottom: 15),
//               child: Text(
//                 'Card number',
//                 style: TextStyle(
//                   color: Color(0xFF6E7191),
//                   fontSize: 14,
//                   fontWeight: FontWeight.w400,
//                   fontFamily: "Poppins",
//                 ),
//               ),
//             ),
//             Center(
//               child: inputText(hintText: '5559 0000 0000 0000', width: 333, height: 48, svgPicture: 'assets/icon/credit-card.svg'),
//             ),
//             Row(
//               children: [
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(top: 40.0,left: 55,bottom: 15),
//                       child: Text(
//                         'Expiry date',
//                         style: TextStyle(
//                           color: Color(0xFF6E7191),
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           fontFamily: "Poppins",
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 30),
//                       child: inputText(hintText: '12/2027', width: 216, height: 48, svgPicture: ''),
//                     )
//                   ],
//                 ),
//                 Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Padding(
//                       padding: EdgeInsets.only(top: 40.0,left: 35,bottom: 15),
//                       child: Text(
//                         'CVV',
//                         style: TextStyle(
//                           color: Color(0xFF6E7191),
//                           fontSize: 14,
//                           fontWeight: FontWeight.w400,
//                           fontFamily: "Poppins",
//                         ),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 30),
//                       child: inputText(hintText: '335', width: 101, height: 48, svgPicture: ''),
//                     )
//                   ],
//                 )
//               ],
//             ),
//             Center(child: Padding(
//               padding: const EdgeInsets.only(top:40.0),
//               child: primaryButton(onPressed: (){
//                 Navigator.push(context,MaterialPageRoute(builder: (context) => Processing(),));
//               }, text: 'Pay now', width: 332, height: 64),
//             ))
//           ],
//         ),
//       ),
//     );
//   }
// }
