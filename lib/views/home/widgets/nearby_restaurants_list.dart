import 'package:e_commerce_app/constants/constants.dart';
import 'package:e_commerce_app/constants/uidata.dart';
import 'package:e_commerce_app/views/home/widgets/restaurant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NearbyRestaurants extends StatelessWidget {
  const NearbyRestaurants({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 190.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(restaurants.length, (i) {
          var restaurant = restaurants[i];
          return RestaurantWidget(
              image: restaurant['imageUrl'],
              logo: restaurant['logoUrl'],
              title: restaurant['title'],
              time: restaurant['time'],
              rating: restaurant['ratingCount']);
        }),
      ),
    );
  }
}
