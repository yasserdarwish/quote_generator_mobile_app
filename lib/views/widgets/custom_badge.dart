import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class CustomBadge extends StatelessWidget {
  const CustomBadge({super.key});

  @override
  Widget build(BuildContext context) {
    return badges.Badge(
      badgeContent: const Text(
        '2',
        style: TextStyle(
            color: Colors.white, fontWeight: FontWeight.w400, fontSize: 22),
      ),
      badgeAnimation: const badges.BadgeAnimation.scale(),
      badgeStyle: const badges.BadgeStyle(
        padding: EdgeInsets.all(10),
        badgeColor: Colors.black,
      ),
      child: Container(
        color: Colors.amber,
        height: 200,
        width: 300,
      ),
    );
  }
}
