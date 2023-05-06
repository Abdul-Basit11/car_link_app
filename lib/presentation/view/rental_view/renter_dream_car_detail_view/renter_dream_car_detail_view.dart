import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_images.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:car_link_app/presentation/view/rental_view/renter_find_car_for_you_view/widget/car_model.dart';
import 'package:car_link_app/presentation/view/rental_view/renter_find_dream_car/model/new_car_model.dart';
import 'package:flutter/material.dart';

import '../renter_prove_ready_drive/renter_prove_ready_drive.dart';
import 'widget/all_review_acrds.dart';
import 'widget/car_basic.dart';
import 'widget/car_rating.dart';

class RenterDreamDeatilCarViewBody extends StatelessWidget {
  final NewCarModel newCarModel;
  final int index;

  const RenterDreamDeatilCarViewBody(
      {super.key, required this.newCarModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Container(
                padding: const EdgeInsets.all(3),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: const Icon(
                  Icons.share,
                  color: Colors.black,
                )),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 250,
              width: double.infinity,
              child: Image.asset(
                newCarModel.carImagePath,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.sH,
                  Text(
                    'Gayk M.s',
                    style: Theme.of(context)
                        .textTheme
                        .labelMedium!
                        .copyWith(fontSize: 13),
                  ),
                  Text(newCarModel.carName,
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontWeight: FontWeight.bold)),
                  Text(
                    'Performance',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  Row(
                    children: [
                      Text(
                        '5.0',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber.shade600,
                        size: 22,
                      ),
                      Text(
                        '(31 Tips)',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  10.sH,
                ],
              ),
            ),
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.sH,
                  Text(
                    'TRIP DATES',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  10.sH,
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child: const Center(
                          child: Icon(Icons.turn_slight_right_rounded),
                        ),
                      ),
                      20.sW,
                      Column(
                        children: [
                          Text(
                            'Thu ,20 Apr,10:00 am',
                            style: context.textTheme.labelLarge,
                          ),
                          Text(
                            'Thu ,20 Apr,10:00 am',
                            style: context.textTheme.labelLarge,
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: AppColors.kPrimaryColor),
                          onPressed: () {},
                          child: const Text('CHANGE'))
                    ],
                  ),
                ],
              ),
            ),
            10.sH,
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.sH,
                  Text(
                    'PICKUP & RETURN',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  10.sH,
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey)),
                        child: const Center(
                          child: Icon(Icons.turn_slight_right_rounded),
                        ),
                      ),
                      20.sW,
                      Column(
                        children: [
                          Text(
                            'Los Angeles CA 91401',
                            style: context.textTheme.labelLarge,
                          ),
                        ],
                      ),
                      const Spacer(),
                      TextButton(
                          style: TextButton.styleFrom(
                              foregroundColor: AppColors.kPrimaryColor),
                          onPressed: () {},
                          child: const Text('CHANGE'))
                    ],
                  ),
                ],
              ),
            ),
            10.sH,
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.sH,
                  Text(
                    'CAR BASICS',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  15.sH,
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        CarBasics(
                          image: AppImages.carSeats,
                          title: '5 seats',
                        ),
                        CarBasics(
                          image: AppImages.carDoor,
                          title: '4 doors',
                        ),
                        CarBasics(
                          image: AppImages.electric,
                          title: 'Electric',
                        ),
                      ]),
                ],
              ),
            ),
            10.sH,
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.sH,
                  Text(
                    'FEATURES ',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  15.sH,
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        const CarBasics(
                          image: AppImages.f1,
                        ),
                        const CarBasics(
                          image: AppImages.f2,
                        ),
                        const CarBasics(
                          image: AppImages.f3,
                        ),
                        Center(
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  foregroundColor: AppColors.kPrimaryColor),
                              onPressed: () {},
                              child: const Text('view more')),
                        ),
                      ]),
                ],
              ),
            ),
            10.sH,
            const Divider(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  10.sH,
                  Text(
                    'DESCRIPTION ',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  15.sH,
                  Text(
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, ',
                    style: context.textTheme.labelLarge,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: TextButton(
                        style: TextButton.styleFrom(
                            foregroundColor: AppColors.kPrimaryColor),
                        onPressed: () {},
                        child: const Text('Read More')),
                  ),
                  10.sH,
                  Text(
                    'RATINGS AND REVIEWS',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  Row(
                    children: [
                      Text(
                        '5.0',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.amber.shade600,
                        size: 22,
                      ),
                      Text(
                        '(28 ratings)',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  10.sH,
                  const CarRating(
                    title: 'Cleanliness',
                  ),
                  const CarRating(
                    title: 'Maintainess',
                  ),
                  const CarRating(
                    title: 'Convienience',
                  ),
                  const CarRating(
                    title: 'Listing accuracy',
                  ),
                  5.sH,
                  Text(
                    'Based on 28 guest rating',
                    style: context.textTheme.labelMedium!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  20.sH,
                  Text(
                    'Review',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                ],
              ),
            ),
            10.sH,
            const AllReviewaCards(),
            Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                  style: TextButton.styleFrom(
                      foregroundColor: AppColors.kPrimaryColor),
                  onPressed: () {},
                  child: const Text('See All Review')),
            ),
            const Divider(),
            15.sH,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hosted By',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: Colors.grey.shade500),
                  ),
                  5.sH,
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(
                      radius: 24,
                      backgroundImage:
                          AssetImage('asset/images/profileImage.png'),
                    ),
                    title: Text(
                      'Gayk',
                      style: context.textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.bold, fontSize: 15),
                    ),
                    subtitle: Text(
                      '78 trips.Joined Jul 2020',
                      style: context.textTheme.labelMedium!
                          .copyWith(color: Colors.grey.shade500, fontSize: 14),
                    ),
                  ),
                ],
              ),
            ),
            50.sH,
          ],
        ),
      ),
      bottomSheet: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
        width: double.infinity,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.6),
              offset: Offset(4, 20),
              blurRadius: 10,
              spreadRadius: 10)
        ]),
        child: CustomButton(
          onTapped: () {
            NavigationHelper.pushRoute(
                context, RenterProveReadyDriveViewBody());
          },
          buttonText: 'Continue',
        ),
      ),
    );
  }
}
