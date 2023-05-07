import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../host_minimum_trip_duration/host_minimum_duration_trip.dart';

class HostAdvancedNoticeViewBody extends StatefulWidget {
  const HostAdvancedNoticeViewBody({Key? key}) : super(key: key);

  @override
  State<HostAdvancedNoticeViewBody> createState() =>
      _HostAdvancedNoticeViewBodyState();
}

class _HostAdvancedNoticeViewBodyState
    extends State<HostAdvancedNoticeViewBody> {
  int _selectedDuration = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.sH,
              Text(
                "Advance notice",
                style: context.textTheme.titleMedium!
                    .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              8.sH,
              Text(
                'How much advanced notice do you need before a trip start',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 15),
              ),
              15.sH,
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: AppColors.kGreyColor),
                child: Row(
                  children: [
                    Image.asset(
                      'asset/images/light-bulb-on.png',
                      scale: 12,
                      color: AppColors.kPrimaryColor,
                    ),
                    15.sW,
                    Expanded(
                      child: Text(
                        '32% of trips at homelocation are booked on shorter notice than your current requirement of\n12 hours',
                        style: context.textTheme.labelMedium!
                            .copyWith(color: Colors.grey),
                        textAlign: TextAlign.justify,
                      ),
                    )
                  ],
                ),
              ),
              20.sH,
              RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.kPrimaryColor,
                title: Text(
                  '6 Hours',
                  style: context.textTheme.labelLarge!
                      .copyWith(color: Colors.grey),
                ),
                value: 0,
                groupValue: _selectedDuration,
                onChanged: (value) {
                  setState(() {
                    _selectedDuration = value!;
                  });
                },
              ),
              RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.kPrimaryColor,
                title: Text(
                  '12 Hours\t Recommended',
                  style: context.textTheme.labelLarge!
                      .copyWith(color: Colors.grey),
                ),
                value: 1,
                groupValue: _selectedDuration,
                onChanged: (value) {
                  setState(() {
                    _selectedDuration = value!;
                  });
                },
              ),
              RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.kPrimaryColor,
                title: Text(
                  '1 Day',
                  style: context.textTheme.labelLarge!
                      .copyWith(color: Colors.grey),
                ),
                value: 2,
                groupValue: _selectedDuration,
                onChanged: (value) {
                  setState(() {
                    _selectedDuration = value!;
                  });
                },
              ),
              100.sH,
              CustomButton(buttonText: 'CONTINUE', onTapped: () {
                NavigationHelper.pushRoute(context, HostMinimumDurationTripViewBody());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
