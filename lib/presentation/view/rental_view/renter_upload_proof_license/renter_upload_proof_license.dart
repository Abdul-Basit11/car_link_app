import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_images.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';

import '../../../element/custom_button.dart';
import '../renter_trip_detail_view/renter_trip_detail_view.dart';

class RenterUploadProofLicenseViewBody extends StatelessWidget {
  const RenterUploadProofLicenseViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.sH,
                  Text(
                    "Upload Driver's License Proof",
                    style: context.textTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  10.sH,
                  Text(
                    'Provide the following details for the proof of driving eligibilty',
                    style: context.textTheme.labelLarge!.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                        color: Colors.grey.shade500),
                  ),
                  40.sH,
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.26,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.kGreyColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.license,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Text(
                      'Upload License Front Photo',
                      style: context.textTheme.labelLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    ElevatedButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text('Add Photo'))
                  ],
                ),
              ),
            ),
            10.sH,
            Divider(),
            10.sH,
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              height: MediaQuery.of(context).size.height * 0.26,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                  color: AppColors.kGreyColor,
                  borderRadius: BorderRadius.circular(12)),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      AppImages.license,
                      height: 40,
                      color: Colors.grey,
                    ),
                    Text(
                      'Upload License Back Photo',
                      style: context.textTheme.labelLarge!.copyWith(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey),
                    ),
                    ElevatedButton(
                        style:
                            TextButton.styleFrom(foregroundColor: Colors.grey),
                        onPressed: () {},
                        child: Text('Add Photo'))
                  ],
                ),
              ),
            ),
            50.sH,
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomButton(
                  buttonText: 'Continue',
                  onTapped: () {
                    NavigationHelper.pushRoute(
                        context, RenterTripDetailViewBody());
                  }),
            ),
            20.sH,
          ],
        ),
      ),
    );
  }
}
