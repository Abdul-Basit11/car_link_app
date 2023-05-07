import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../../../element/custom_button.dart';

class HostMaximumTripDurationViewBody extends StatefulWidget {
  const HostMaximumTripDurationViewBody({Key? key}) : super(key: key);

  @override
  State<HostMaximumTripDurationViewBody> createState() =>
      _HostMaximumTripDurationViewBodyState();
}

class _HostMaximumTripDurationViewBodyState
    extends State<HostMaximumTripDurationViewBody> {
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
                "MAXIMUM TRIP DURATION",
                style: context.textTheme.titleMedium!
                    .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              8.sH,
              Text(
                'What is the Longest possible trip you will accept',
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
                        '1 % of booked trips are longer than your current maximum of 1 month',
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
                  '5 day',
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
                  '1 week',
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
              RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.kPrimaryColor,
                title: Text(
                  '2 week',
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
              RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.kPrimaryColor,
                title: Text(
                  '1 Month\t Recommended',
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
              RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.kPrimaryColor,
                title: Text(
                  '3 Month',
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
              RadioListTile(
                contentPadding: EdgeInsets.zero,
                activeColor: AppColors.kPrimaryColor,
                title: Text(
                  'Any',
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
              80.sH,
              CustomButton(buttonText: 'CONTINUE', onTapped: () {}),
              10.sH,
            ],
          ),
        ),
      ),
    );
  }
}
