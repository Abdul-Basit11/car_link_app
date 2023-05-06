import 'package:flutter/material.dart';

import '../../congiguration/app_colors.dart';


class CustomButton extends StatelessWidget {


  final String buttonText;
final VoidCallback onTapped;

  const CustomButton({super.key, required this.buttonText, required this.onTapped});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapped,
      child: Container(
        width: double.infinity,
        height: 46,
        decoration: customBoxDecoration(),
        child: Center(
          child: Text(buttonText,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(
                fontSize: 14, color: AppColors.kWhiteColor),),
        ),
      ),
    );
  }
}
