import 'package:car_link_app/navigation_helper/navigation_helper.dart';

import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';

import '../renter_book_the_car_view/renter_book_the_car_view.dart';
import '../renter_bottom_navigation_bar_view/renter_bottom_navugation_bar_view.dart';
import '../renter_find_car_for_you_view/widget/car_model.dart';
import '../renter_quick_contact_view/renter_quick_contact_view.dart';

class RenterCarDetailViewBody extends StatelessWidget {
  final CarModel carModel;
  final int index;

  const RenterCarDetailViewBody(
      {super.key, required this.carModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.more_horiz),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                carModel.carName,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    carModel.carLogo ?? '',
                    height: 20,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Text(
                    '2013',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Image.asset(
                carModel.carImage,
                height: 200,
                width: 300,
                fit: BoxFit.cover,
              )),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Renter',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 5),
                        decoration: BoxDecoration(
                            color: AppColors.kWhiteColor,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  blurRadius: 5,
                                  spreadRadius: 1),
                            ]),
                        child: Row(
                          children: [
                            const CircleAvatar(
                              radius: 18,
                              backgroundImage:
                                  AssetImage('asset/images/profileImage.png'),
                            ),
                            Text(
                              'Felix Jones',
                              style: Theme.of(context).textTheme.labelMedium,
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 40,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 6, vertical: 5),
                        decoration: BoxDecoration(
                            color: AppColors.kWhiteColor,
                            borderRadius: BorderRadius.circular(40),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  blurRadius: 5,
                                  spreadRadius: 1),
                            ]),
                        child: Row(
                          children: [
                            Text(
                              '4.5',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.amber.shade700,
                              size: 18,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                        ..pop()
                        ..pushReplacement(MaterialPageRoute(
                            builder: (context) =>
                                RenterBottomNavigationBarViewBody(
                                  rentercurrentIndex: 2,
                                )));

                      // NavigationHelper.pushRoute(
                      //     context,
                      //     RenterBottomNavigationBarViewBody(
                      //       rentercurrentIndex: 2,
                      //     ));
                    },
                    child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 6),
                        decoration: BoxDecoration(
                            color: AppColors.kBlackColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.more_horiz,
                          color: AppColors.kWhiteColor,
                        )),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  GestureDetector(
                    onTap: () {
                      NavigationHelper.pushRoute(
                          context, RenterQuickContactViewBody());
                    },
                    child: const Icon(
                      Icons.phone,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              carDetailRow(context),
              const SizedBox(
                height: 20,
              ),
              Text(
                'Location',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.8),
                          blurRadius: 5,
                          spreadRadius: 1),
                    ]),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.location_pin,
                      color: AppColors.kBlackColor,
                    ),
                    Expanded(
                      child: Text(
                        'St.Paraguay Beach,South Carolina',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Spacer(),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: '\$1500 ',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold)),
                    TextSpan(
                        text: '/day',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                color: Colors.grey,
                                fontWeight: FontWeight.bold)),
                  ])),
                  Spacer(),
                  Expanded(
                    flex: 4,
                    child: SizedBox(
                      height: 46,
                      child: OutlinedButton(
                          style: TextButton.styleFrom(
                            foregroundColor: AppColors.kBlackColor,
                          ),
                          onPressed: () {
                            NavigationHelper.pushRoute(
                                context,
                                RenterBookTheCarViewBody(
                                    carModel: carModel, index: index));
                          },
                          child: Text(
                            'Book Now',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    fontSize: 15, fontWeight: FontWeight.w700),
                          )),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget carDetailRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Row(
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 80,
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
                  Text(
                    'Transmission',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    'Automatic',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              height: 80,
              decoration: BoxDecoration(
                  color: AppColors.kWhiteColor,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.grey, blurRadius: 5, spreadRadius: 1),
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Acceleration',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(color: Colors.grey, fontSize: 16),
                  ),
                  Text(
                    '3.6s 0~120 km/h',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
