import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';

import '../renter_rent_car_travel/renter_rent_car_travel_view.dart';



class RenterGetStartedViewBody extends StatelessWidget {
  const RenterGetStartedViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.only(top: 50),
        // height: size.height+300,
        // width: size.width+150,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('asset/images/getstarted.jpg'))),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'asset/images/applogo.png',
                      height: 12,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Premium Car Rental',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          backgroundColor: Colors.red.shade100,
                          wordSpacing: 1,
                          fontSize: 24),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Lorem ipsum dolor sit amet, consectetuer\nadipiscing elit, sed diam nonummy\nnibh euismod',
                      style: Theme.of(context).textTheme.labelMedium!.copyWith(
                          fontFamily: 'Bahnschrift',
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const Spacer(),
              Align(
                alignment: Alignment.bottomRight,
                child: GestureDetector(
                  onTap: () {
                    NavigationHelper.pushReplacement(
                        context, const RenterRentCarTravelViewBody());
                  },
                  child: Container(
                    alignment: Alignment.center,
                    height: 60,
                    width: MediaQuery.of(context).size.width * 0.35,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: AssetImage('asset/images/skewbutton.png'))),
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Get Started',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(
                                    color: AppColors.kWhiteColor,
                                    fontFamily: 'Bahnschrift',
                                    fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Icon(
                            Icons.arrow_forward,
                            color: AppColors.kWhiteColor,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: size.height*0.12,),
            ],
          ),
        ),
      ),
    );
  }
}
