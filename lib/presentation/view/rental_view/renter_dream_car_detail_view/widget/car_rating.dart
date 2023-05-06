import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';

class CarRating extends StatelessWidget {
  final String title;

  const CarRating({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: context.textTheme.titleMedium,
        ),
        Spacer(),
        Expanded(
          flex: 7,
          child: Container(
            height: 4,
            width: MediaQuery.of(context).size.width*0.2,
            decoration: BoxDecoration(
                color: AppColors.kPrimaryColor,
                borderRadius: BorderRadius.circular(5)),
          ),
        ),
        10.sW,
        Text(
          '5.0',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
