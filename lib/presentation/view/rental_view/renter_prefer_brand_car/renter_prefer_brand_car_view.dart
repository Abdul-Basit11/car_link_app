import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/material.dart';

import '../renter_bottom_navigation_bar_view/renter_bottom_navugation_bar_view.dart';
import '../renter_find_car_for_you_view/renter_find_car_for_you_view.dart';
import 'widget/model.dart';
import 'widget/select_car.dart';

class RenterPreferBrandCarViewBody extends StatefulWidget {
  const RenterPreferBrandCarViewBody({Key? key}) : super(key: key);

  @override
  State<RenterPreferBrandCarViewBody> createState() =>
      _RenterPreferBrandCarViewBodyState();
}

class _RenterPreferBrandCarViewBodyState
    extends State<RenterPreferBrandCarViewBody> {
  //int initialIndex = 0;

  @override
  Widget build(BuildContext context) {
    final orientation = Orientation;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
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
              Image.asset(
                'asset/images/applogo.png',
                height: 12,
              ),
              const SizedBox(
                height: 5,
              ),
              Text('Which brand of car\nyou prefer?',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      fontSize: 24, fontWeight: FontWeight.bold, height: 0)),
              Text(
                'Login to your account using email or social\nnetworks',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontFamily: 'Bahnschrift',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  SelectCar(
                    image: 'asset/images/nissan.png',
                    carName: 'Nissan',
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SelectCar(
                    image: 'asset/images/suzuki.png',
                    carName: 'Suzuki',
                  ),
                ],
              ),
              Row(
                children: [
                  SelectCar(
                    image: 'asset/images/toyota.png',
                    carName: 'Toyota',
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SelectCar(
                    image: 'asset/images/honda.png',
                    carName: 'Honda',
                  ),
                ],
              ),
              Row(
                children: [
                  SelectCar(
                    image: 'asset/images/hyundai.png',
                    carName: 'Hyundai',
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SelectCar(
                    image: 'asset/images/kia.png',
                    carName: 'Kia',
                  ),
                ],
              ),
              Row(
                children: [
                  SelectCar(
                    image: 'asset/images/ford.png',
                    carName: 'Ford',
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  SelectCar(
                    image: 'asset/images/mitsibishi.png',
                    carName: 'Mitsubishi',
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              if (orientation == Orientation.portrait)
                Padding(
                  padding: const EdgeInsets.only(left: 250),
                  child: CustomButton(
                      buttonText: 'Next',
                      onTapped: () {
                        NavigationHelper.pushRoute(
                            context,
                            RenterBottomNavigationBarViewBody(
                              rentercurrentIndex: 0,
                            ));
                      }),
                )
              else
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width * 0.40),
                  child: CustomButton(
                      buttonText: 'Next',
                      onTapped: () {
                        NavigationHelper.pushRoute(
                            context,
                            RenterBottomNavigationBarViewBody(
                              rentercurrentIndex: 0,
                            ));
                      }),
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
}
