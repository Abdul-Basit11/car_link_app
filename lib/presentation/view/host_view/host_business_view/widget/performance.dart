import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import '../../../../../congiguration/app_colors.dart';

class Performance extends StatelessWidget {
  const Performance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Top Rated Host',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(backgroundColor: Colors.red.shade100),
          ),
          const SizedBox(height: 20,),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
            decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
            child: Center(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.stars_rounded,
                    color: Colors.grey,
                    size: 70,
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Achieve Top Rated Badge',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(fontSize: 16),
                        ),
                        Text(
                          'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore ',
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(fontSize: 11, color: Colors.grey),
                        ),
                        const SizedBox(height: 10,),
                        Text(
                          'Learn more',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontSize: 10, color:AppColors.kPrimaryColor),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 30,),

          Text(
            'Performance for Apr 1, 2022- Mar 31-2022',
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(backgroundColor: Colors.red.shade100),
          ),
          buildContainer(context),
          buildContainer(context),
          buildContainer(context),

        ],
      ),
    );
  }

  Container buildContainer(BuildContext context) {
    return Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
          child: Center(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CircularPercentIndicator(

                  radius: 40.0,
                  animationDuration: 1200,
                  lineWidth: 6.0,
                  center:  Text(
                      "0 %",
                      style:
                      Theme.of(context).textTheme.titleMedium!.copyWith(
                          backgroundColor: Colors.red.shade100
                      )
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Response Rate',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontSize: 16),
                      ),
                      Text(
                        'Lorem ipsum dolor sit amet,',
                        style: Theme.of(context)
                            .textTheme
                            .bodySmall!
                            .copyWith(fontSize: 11, color: Colors.grey),
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        );
  }
}
