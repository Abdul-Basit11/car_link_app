import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';


class PopularTopics extends StatelessWidget {

  final String image;
  final String title;

  const PopularTopics({super.key, required this.image, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 125,
        decoration: BoxDecoration(
            color: AppColors.kWhiteColor,
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  blurRadius: 5,
                  spreadRadius: 1),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(image,height: 80,width: 80,fit: BoxFit.contain,),
            Text(title,style: Theme.of(context).textTheme.labelLarge!.copyWith(
                color: Colors.grey
            )),

          ],
        ),
      ),
    );
  }
}
