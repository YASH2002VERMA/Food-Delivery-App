import 'package:e_commerce_app/common/reusable_text.dart';
import 'package:e_commerce_app/constants/constants.dart';
import 'package:flutter/material.dart';

class RecommendationsPage extends StatelessWidget {
  const RecommendationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.3,
        backgroundColor: kWhite,
        title: const ReusableText(
            text: "Recommendations",
            style: TextStyle(
                fontSize: 13, color: kGray, fontWeight: FontWeight.w600)),
      ),
      body: const Center(
        child: Text("All Recommendations"),
      ),
    );
  }
}
