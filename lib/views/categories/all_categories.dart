import 'package:e_commerce_app/common/background_container.dart';
import 'package:e_commerce_app/common/reusable_text.dart';
import 'package:e_commerce_app/constants/uidata.dart';
import 'package:e_commerce_app/views/categories/widgets/category_tile.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce_app/constants/constants.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AllCategories extends StatelessWidget {
  const AllCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kOffWhite,
        title: const ReusableText(
          text: "Categories",
          style: TextStyle(
            fontSize: 12,
            color: kGray,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: BackGroundContainer(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.only(left: 12.w, top: 10.h),
          height: height,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: List.generate(
              categories.length,
              (i) {
                var category = categories[i];
                return CategoryTile(category: category);
              },
            ),
          ),
        ),
      ),
    );
  }
}
