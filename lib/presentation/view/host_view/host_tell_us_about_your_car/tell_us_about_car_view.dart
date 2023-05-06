import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../host_enter_car_detail/host_enter_car_detail_view.dart';
import '../host_specific_location/host_specific_location.dart';

class TellUsAboutYourCarViewBody extends StatelessWidget {
  const TellUsAboutYourCarViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            20.sH,
            Center(
                child: Image.asset(
              'asset/images/verify.png',
              width: 200,
              height: 200,
              fit: BoxFit.contain,
            )),
            Center(
              child: Text(
                'Tell Us About Your Car',
                style: context.textTheme.titleMedium!
                    .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
              ),
            ),
            10.sH,
            Text(
              'Where is your car located',
              style: context.textTheme.labelLarge!.copyWith(color: Colors.grey),
            ),
            10.sH,
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 48,
              width: double.infinity,
              decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
              child: GestureDetector(
                onTap: () {
                  NavigationHelper.pushRoute(
                      context, HostSpecificLocationViewBody());
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Enter Address',
                      style: context.textTheme.labelLarge!
                          .copyWith(color: Colors.grey),
                    ),
                    Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.grey,
                    )
                  ],
                ),
              ),
            ),
            10.sH,
            Text(
              'WHAT CAR DO YOU HAVE?',
              style: context.textTheme.labelLarge!.copyWith(color: Colors.grey),
            ),
            10.sH,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Identify Your Car',
                  style: context.textTheme.labelLarge!
                      .copyWith(color: Colors.grey),
                ),
                InkWell(
                  onTap: () {
                    NavigationHelper.pushRoute(context, HostEnterCarDetailViewBody());
                  },
                  child: Container(
                    width: 90,
                    height: 38,
                    decoration: customBoxDecoration(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'START',
                          style: context.textTheme.labelLarge!
                              .copyWith(color: Colors.white),
                        ),
                        Icon(
                          Icons.arrow_forward_ios,
                          size: 18,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
            60.sH,
            CustomButton(buttonText: 'Continue', onTapped: () {}),
          ],
        ),
      ),
    );
  }
}
