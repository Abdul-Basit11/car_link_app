import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../../../element/custom_button.dart';
import '../h_ur_car_is_eligible/h_ur_car_is_eligible.dart';


class HostTellUsAboutUrCarWithDetailViewBody extends StatelessWidget {
  const HostTellUsAboutUrCarWithDetailViewBody({Key? key}) : super(key: key);

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
            Text(
              'BMW M8 2022',
              style: context.textTheme.labelLarge
            ),
            60.sH,
            CustomButton(buttonText: 'Continue', onTapped: () {
              NavigationHelper.pushRoute(context, HostYpurCarisEligibleViewBody());
            }),
          ],
        ),
      ),
    );
  }
}
