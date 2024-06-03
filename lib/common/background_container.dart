import 'package:e_commerce_app/constants/constants.dart';
import 'package:flutter/material.dart';

class BackGroundContainer extends StatelessWidget {
  const BackGroundContainer({super.key, required this.child, required this.color});

  final Widget child;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration:  BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        image: const DecorationImage(
          image: AssetImage("assets/images/restaurant_bk.png"),
          fit: BoxFit.cover,
          opacity: .7,
        ),
      ),
      child: child,
    );
  }
}

// 1:42:54