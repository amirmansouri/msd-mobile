import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:msd/Components/PrimaryButton.dart';
import '../../Components/Checkout/listProductInCheckout.dart';
import 'checkoutCartBank.dart';
import 'checkoutProcessing.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
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
        title: const Center(
            child: Text(
          'Checkout',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              color: Color(0xFF4E4B66),
              fontSize: 16),
        )),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
            child: Row(
              children: [
                Text(
                  'Order summary',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF6E7191),
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  'Edit order',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color(0xFF00BA88),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          SizedBox(
            height: 150,
            child: ListView.separated(
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) {
                return listProductInCheckout();
              },
              separatorBuilder: (BuildContext context, int index) =>
                  const SizedBox(
                height: 10
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 20),
            child: Row(
              children: [
                Text(
                  'Shipping address',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF6E7191),
                      fontWeight: FontWeight.w500),
                ),
                Spacer(),
                Text(
                  'Edit',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 12,
                      color: Color(0xFF00BA88),
                      fontWeight: FontWeight.w400),
                )
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF8F95AB),
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  'Lilly Rodriguez',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF4E4B66),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
            child: Row(
              children: [
                Text(
                  'Street',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF8F95AB),
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  'XYZ Street, 10025',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF4E4B66),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0, right: 20),
            child: Row(
              children: [
                Text(
                  'Phone Number',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF8F95AB),
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  '+216 75 000 000',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 14,
                      color: Color(0xFF4E4B66),
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 50,
          ),
          primaryButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>Processing(),
                    ));
              },
              text: 'Proceed to checkout',
              width: 332,
              height: 64)
        ],
      ),
    );
  }
}
