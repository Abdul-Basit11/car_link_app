import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_text_field.dart';
import 'package:car_link_app/presentation/view/rental_view/renter_find_dream_car/widget/renter_home_cards.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../renter_search_car_result_view/body.dart';
import 'widget/active_car.dart';
import 'widget/booked_cars.dart';

class RenterFindDreamCarViewBody extends StatefulWidget {
  const RenterFindDreamCarViewBody({Key? key}) : super(key: key);

  @override
  State<RenterFindDreamCarViewBody> createState() =>
      _RenterFindDreamCarViewBodyState();
}

class _RenterFindDreamCarViewBodyState
    extends State<RenterFindDreamCarViewBody> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: currentIndex,
      length: 3,
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Image.asset(
                    'asset/images/applogo.png',
                    height: 12,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Let's find your dream\ncar",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 0)),
                  const SizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    onTapped: () {
                      NavigationHelper.pushRoute(
                          context, RenterSearchCarResultViewBody());
                    },
                    hintText: 'Search your car',
                    prefixIcon: Icons.search_rounded,
                    isPrefixIcon: true,
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TabBar(
                      onTap: (v) {
                        setState(() {
                          currentIndex = v;
                        });
                      },
                      unselectedLabelColor: Colors.grey.shade400,
                      labelStyle: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                      labelColor: AppColors.kBlackColor,
                      indicatorColor: AppColors.kPrimaryColor,
                      dividerColor: Colors.transparent,
                      isScrollable: true,
                      tabs: const [
                        Tab(
                          text: 'Home',
                        ),
                        Tab(
                          text: 'Booked',
                        ),
                        Tab(
                          text: 'Active Ride',
                        ),
                      ]),
                  const SizedBox(
                    height: 15,
                  ),
                  if (currentIndex == 0)
                    Text(
                      'Reently Viewed',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                  if (currentIndex == 0) 15.sH,
                  SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child: TabBarView(
                      physics: NeverScrollableScrollPhysics(),
                      children: [
                        RenterHomeCarCards(),
                        BookedCars(),
                        ActiveRide(),
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
  }
}
