import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../../../../navigation_helper/navigation_helper.dart';
import '../host_identity_verification_view/host_identity_verification_view.dart';

class HostBecomeAHosterViewBody extends StatefulWidget {
  const HostBecomeAHosterViewBody({Key? key}) : super(key: key);

  @override
  State<HostBecomeAHosterViewBody> createState() => _HostBecomeAHosterViewBodyState();
}

class _HostBecomeAHosterViewBodyState extends State<HostBecomeAHosterViewBody> {
  final List countryList=[
    'London,United Kingdom',
    'City 1,United Kingdom',
    'City 2,United Kingdom',
    'City 3,United Kingdom',
  ];
 String selectedCountry='London,United Kingdom';
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 5,
              ),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                color: AppColors.kGreyColor,
                elevation: 4,
                child: Image.asset(
                  'asset/images/carhosterimage.png',
                  height: 200,
                  width: double.infinity,
                  fit: BoxFit.cover,

                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                'asset/images/applogo.png',
                height: 12,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                "Become a Hoster and Earn\nwith Car Link Car Rentals",
                style: Theme.of(context)
                    .textTheme
                    .titleMedium!
                    .copyWith(fontSize: 21, height: 0,fontWeight: FontWeight.bold),
              ),
              Text(
                'Decide when, where and how\nyou want to earn',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontFamily: 'Bahnschrift',
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Where would you like to earn?',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 5,
              ),


              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                height: 55,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Center(
                  child: DropdownButton<String>(

                    isExpanded: true,
                    value: selectedCountry,
                    icon: const Icon(
                      Icons.arrow_drop_down,
                      color: AppColors.kBlackColor,
                    ),
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(fontSize: 16),
                    underline: const SizedBox(),
                    onChanged: (String? value) {
                      setState(() {
                        selectedCountry = value!;
                      });
                    },
                    items: countryList
                        .map<DropdownMenuItem<String>>((value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ),

              const SizedBox(
                height: 25,
              ),
              Text(
                'Referral code (optional)',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              TextFormField(
                cursorColor: AppColors.kPrimaryColor,
                keyboardType: TextInputType.number,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall!
                    .copyWith(color: AppColors.kBlackColor),
                decoration: InputDecoration(
                  isDense: true,
                  filled: true,
                  fillColor: Colors.grey.shade400,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  hintText: '',
                  hintStyle: Theme.of(context).textTheme.labelLarge,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                  'By Proceeding, I agree that olor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(height: 0)),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: CustomButton(buttonText: 'Next', onTapped: () {
                  NavigationHelper.pushRoute(context, HostIdentityVerificationViewBody());
                }),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
