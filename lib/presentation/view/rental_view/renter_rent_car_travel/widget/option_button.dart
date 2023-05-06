import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';

class OptionButton extends StatelessWidget {


  final String title;
  final VoidCallback onTapped;
  const OptionButton({super.key, required this.title,required this.onTapped});

  @override
  Widget build(BuildContext context) {
    return   Center(
      child: GestureDetector(

        onTap:onTapped,
        child: Container(
          height: 48,
          margin: EdgeInsets.symmetric(vertical: 5),
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width * 0.6,
          padding:
          const EdgeInsets.symmetric(horizontal: 4),
          decoration:  BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              gradient: const LinearGradient(
                  colors: [
                    AppColors.kBlackColor,
                    AppColors.kPrimaryColor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter),
          ),
          child: Text(
            title,
            style: Theme.of(context)
                .textTheme
                .labelMedium!
                .copyWith(color: AppColors.kWhiteColor,fontSize: 15),
          ),
        ),
      ),
    );
  }
}
