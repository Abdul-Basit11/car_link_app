import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../../../element/custom_button.dart';
import '../host_maximum_trip_duration/host_maximum_trip_duration.dart';


class HostMinimumDurationTripViewBody extends StatefulWidget {
  const HostMinimumDurationTripViewBody({Key? key}) : super(key: key);

  @override
  State<HostMinimumDurationTripViewBody> createState() => _HostMinimumDurationTripViewBodyState();
}

class _HostMinimumDurationTripViewBodyState extends State<HostMinimumDurationTripViewBody> {
  int _selectedDuration = 0;
  bool _isChecked = false;

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
                "MINIMUM DURATION TRIP",
                style: context.textTheme.titleMedium!
                    .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              8.sH,
              Text(
                'What is the Shortest possible trip you will accept',
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
                        'A 1 day minimum open you up to 100% of trips!',
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
                  '1 day\t Recommended',
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
                  '2 day',
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
                  '3 day',
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
              10.sH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '2 day min for trip starting Fri to Sat',
                    style:context.textTheme.labelLarge!.copyWith(
                      color: Colors.grey
                    )
                  ),
                  SizedBox(width: 8),
                  Checkbox(
                    activeColor: AppColors.kPrimaryColor,
                    value: _isChecked,
                    onChanged: (bool? value) {
                      setState(() {
                        _isChecked = value!;
                      });
                    },
                  ),
                ],
              ),
              100.sH,
              CustomButton(buttonText: 'CONTINUE', onTapped: () {
                NavigationHelper.pushRoute(context, HostMaximumTripDurationViewBody());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
