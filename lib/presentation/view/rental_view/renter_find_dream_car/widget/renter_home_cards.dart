import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/view/rental_view/renter_dream_car_detail_view/renter_dream_car_detail_view.dart';
import 'package:flutter/material.dart';

import '../model/new_car_model.dart';

class RenterHomeCarCards extends StatelessWidget {
  const RenterHomeCarCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ListView.builder(
        itemCount: newCArModel.length,
        shrinkWrap: true,
        primary: false,
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (context, i) {
          return GestureDetector(
            onTap: () {
              NavigationHelper.pushRoute(
                  context,
                  RenterDreamDeatilCarViewBody(
                    index: i,
                    newCarModel: newCArModel[i],
                  ));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: SizedBox(
                height: 233,
                width: double.infinity,
                child: Theme(
                  data: ThemeData(cardColor: Colors.transparent),
                  child: Card(
                    color: AppColors.kGreyColor,
                    elevation: 4,
                    child: Column(
                      children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                                top: Radius.circular(10)),
                            child: Image.asset(
                              newCArModel[i].carImagePath,
                              width: double.infinity,
                              height: 160,
                              fit: BoxFit.cover,
                            )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
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
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(newCArModel[i].rating),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  for (int i = 0; i < 5; i++)
                                    Icon(
                                      Icons.star,
                                      size: 15,
                                      color: Colors.amber.shade600,
                                    )
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
