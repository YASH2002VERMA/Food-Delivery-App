import 'package:e_commerce_app/constants/uidata.dart';
import 'package:e_commerce_app/views/home/widgets/food_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FoodsList extends StatelessWidget {
  const FoodsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 184.h,
      padding: EdgeInsets.only(left: 12.w, top: 10.h),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: List.generate(foods.length, (i) {
          var food = foods[i];
          return FoodWidget(
            image: food['imageUrl'],
            title: food['title'],
            time: food['time'],
            price: food['price'].toStringAsFixed(2),
          );
        }),
      ),
    );
  }
}
