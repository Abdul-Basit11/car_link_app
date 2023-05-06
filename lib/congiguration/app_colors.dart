import 'package:flutter/material.dart';

class AppColors {
  static const Color kPrimaryColor = Color(0xffD60B00);
  static const Color kBlackColor = Color(0xff000000);
  static const Color kGreyColor = Color(0xffEDEBEB);
  static const Color kWhiteColor = Colors.white;
}


BoxDecoration customBoxDecoration() {
  return BoxDecoration(
    borderRadius: BorderRadius.circular(20),
    gradient: const LinearGradient(
        colors: [
          AppColors.kBlackColor,
          AppColors.kPrimaryColor,
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter),
  );
}