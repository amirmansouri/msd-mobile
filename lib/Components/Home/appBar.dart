 import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

PreferredSizeWidget appBar({
  required String shortUserName,
  required String userName,
  required String company,
  required String actionSvg,
  required String notifSvg,
  required Function() tapInbox,
  required Function() tapnotif,
  required Function() onTapUser,
}) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: InkWell(
        onTap: onTapUser,
        child: CircleAvatar(
          backgroundColor: Color(0xFFED2E7E),
          child: Text(shortUserName,
              style: TextStyle(color: Color(0xFFFCFCFC), fontSize: 20)),
        ),
      ),
    ),
    title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            userName,
            style: TextStyle(fontSize: 24, color: Color(0xFF1E2644)),
          ),
          Text(
            company,
            style: TextStyle(fontSize: 12, color: Color(0xFF6E7191)),
          )
        ]),
    actions: [
      Padding(
        padding: const EdgeInsets.only(right: 20),
        child: InkWell(
            onTap: tapInbox,
            child: SvgPicture.asset(actionSvg)),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 5),
        child: InkWell(
            onTap: tapnotif,
            child: SvgPicture.asset(notifSvg)),
      )
    ],
  );
}
