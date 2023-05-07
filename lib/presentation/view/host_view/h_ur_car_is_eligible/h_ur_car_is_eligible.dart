import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../element/custom_button.dart';
import '../h_personal_information/host_personal_information.dart';

class HostYpurCarisEligibleViewBody extends StatelessWidget {
  const HostYpurCarisEligibleViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              60.sH,
              Center(
                  child: Stack(
                    children: [
                      Image.asset(
                'asset/images/verify.png',
                width: 200,
                height: 200,
                fit: BoxFit.contain,
              ),

                    ],
                  )),
              Center(
                child: Text(
                  'Your Car is Eligible',
                  style: context.textTheme.titleMedium!
                      .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
                ),
              ),
              10.sH,
              Center(
                child: Text(
                  'We need some more information to set up your car listing',
                  style:
                      context.textTheme.labelLarge!.copyWith(color: Colors.grey),
                ),
              ),
              100.sH,
              CustomButton(buttonText: 'Continue', onTapped: () {
                NavigationHelper.pushRoute(context, HostPersonalInformationViewBody());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
