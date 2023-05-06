import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../congiguration/app_images.dart';


class CarBasics extends StatelessWidget {


  final String image;
  final String? title;

  const CarBasics({super.key, required this.image,  this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ImageIcon(AssetImage(image),size: 30),
        8.sH,
        Text(
          title??'',
          style: context.textTheme.titleMedium,
        ),
      ],
    );
  }
}
