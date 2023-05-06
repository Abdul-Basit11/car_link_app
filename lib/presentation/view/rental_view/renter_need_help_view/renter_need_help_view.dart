import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/presentation/element/custom_text_field.dart';
import 'package:flutter/material.dart';

import 'widget/popular_topics.dart';

class RenterNeedHelpViewBody extends StatelessWidget {
  const RenterNeedHelpViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Icon(Icons.menu),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,

                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'asset/images/applogo.png',
                        height: 12,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Help',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(fontSize: 24),
                      )
                    ],
                  ),
                  Text(
                    'What do you need\nhelp with?',
                    style: Theme.of(context).textTheme.labelMedium!.copyWith(
                        fontFamily: 'Bahnschrift',
                        fontWeight: FontWeight.w600,
                        color: Colors.grey),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 15,
                              spreadRadius: 1),
                        ]),
                    child: TextFormField(
                      cursorColor: AppColors.kPrimaryColor,

                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Try Update my account details... ',
                        hintStyle:Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(color: Colors.grey.shade600,fontSize: 13),
                        prefixIcon: Icon(Icons.search_rounded,)
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Popular Topics',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 22
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 0.2,
              color: AppColors.kBlackColor,
            ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  Row(
                    children: const [
                      PopularTopics(
                        title: 'Payments',
                        image: 'asset/images/payements.png',
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      PopularTopics(
                        title: 'Pickup and dropoff',
                        image: 'asset/images/pickup.png',
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    children: const [
                      PopularTopics(
                        title: 'Profile Verification',
                        image: 'asset/images/profileverification.png',
                      ),
                      SizedBox(
                        width: 40,
                      ),
                      PopularTopics(
                        title: 'Vehicle Verification',
                        image: 'asset/images/vehicle.png',
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 20,),
          ],
        ),
      ),
    );
  }
}
