import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';


class AllReviewaCards extends StatelessWidget {
  const AllReviewaCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
      width: double.infinity,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 10),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 240,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Theme(
                data: ThemeData(
                    cardTheme: CardTheme(
                      color: Colors.white,
                      elevation: 4,

                    )
                ),
                child: Card(
                  elevation: 3,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0, vertical: 10),
                    child: Column(
                      children: [
                        10.sH,
                        Row(
                          children: [
                            CircleAvatar(
                              backgroundImage: AssetImage(
                                  'asset/images/profileImage.png'),
                            ),
                            10.sW,
                            Column(
                              crossAxisAlignment:
                              CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      Icon(
                                        Icons.star_rate_rounded,
                                        color: AppColors.kPrimaryColor,
                                        size: 20,
                                      ),
                                  ],
                                ),
                                5.sH,
                                Row(
                                  children: [
                                    Text(
                                      'Kyle',
                                      style: context
                                          .textTheme.labelMedium!
                                          .copyWith(
                                          fontWeight:
                                          FontWeight.bold),
                                    ),
                                    Text(
                                      '\t\t21 March 2023',
                                      style: context
                                          .textTheme.labelMedium!
                                          .copyWith(
                                          color:
                                          Colors.grey.shade500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                        Spacer(),
                        Text(
                            'Car was very clean and well maintained .Pick -up drop off ,and over all communication was smooth and easy')
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
