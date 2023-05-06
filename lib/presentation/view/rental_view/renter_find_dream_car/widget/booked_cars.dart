import 'package:car_link_app/congiguration/app_images.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';
import '../model/new_car_model.dart';

class BookedCars extends StatelessWidget {
  const BookedCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemCount: 1,
        shrinkWrap: true,
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                width: double.infinity,
                child: Theme(
                  data: ThemeData(cardColor: Colors.transparent),
                  child: Card(
                    color: AppColors.kGreyColor,
                    elevation: 4,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                                borderRadius: const BorderRadius.vertical(
                                    top: Radius.circular(10)),
                                child: Image.asset(
                                  'asset/images/m3.jpg',
                                  width: double.infinity,
                                  height: 160,
                                  fit: BoxFit.cover,
                                )),
                            Container(
                              margin: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20)),
                              padding: EdgeInsets.all(5),
                              child: Text(
                                'Waiting for approval',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.green),
                              ),
                            )
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10.0, vertical: 6),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    newCArModel[i].carName,
                                    style:
                                        Theme.of(context).textTheme.labelLarge,
                                  ),
                                  Text(
                                    'US\$79/day',
                                    style:
                                        Theme.of(context).textTheme.labelMedium,
                                  ),
                                ],
                              ),
                              10.sH,
                              Row(
                                children: [
                                  Text('4.0'),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  for (int i = 0; i < 5; i++)
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber.shade600,
                                    ),
                                  Spacer(),
                                  InkWell(
                                    onTap: (){},
                                    child: Text(
                                      'Cancel Requset',
                                      style: context.textTheme.labelMedium!
                                          .copyWith(
                                              color: AppColors.kPrimaryColor),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
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
