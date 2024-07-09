import 'package:e_commerce_app/common/app_style.dart';
import 'package:e_commerce_app/common/background_container.dart';
import 'package:e_commerce_app/common/reusable_text.dart';
import 'package:e_commerce_app/constants/constants.dart';
import 'package:e_commerce_app/constants/uidata.dart';
import 'package:e_commerce_app/views/home/widgets/restaurant_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllNearbyrestaurants extends StatelessWidget {
  const AllNearbyrestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kSecondary,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kSecondary,
        title: ReusableText(
          text: "NearBy Restaurants",
          style: appStyle(13, kLightWhite, FontWeight.w600),
        ),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(12.h),
          child: ListView(
            children: List.generate(restaurants.length, (i) {
              var restaurant = restaurants[i];
              return RestaurantTile(
                restaurant: restaurant,
              );
            }),
          ),
        ),
      ),
    );
  }
}
