import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:car_link_app/presentation/element/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../congiguration/app_colors.dart';
import '../renter_upload_proof_license/renter_upload_proof_license.dart';

class RenterProveReadyDriveViewBody extends StatefulWidget {
  @override
  State<RenterProveReadyDriveViewBody> createState() =>
      _RenterProveReadyDriveViewBodyState();
}

class _RenterProveReadyDriveViewBodyState
    extends State<RenterProveReadyDriveViewBody> {
  String _expiryLicense = '';
  String _dateOfBirth = '';

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
                'Prove You Are Ready To Dive',
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
              Text(
                'Driver Permit Number',
                style: context.textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey.shade500),
              ),
              5.sH,
              CustomTextField(
                hintText: 'Enter Permit Number',
                textInputType: TextInputType.number,
              ),
              15.sH,
              Text(
                'Date of Birth',
                style: context.textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey.shade500),
              ),
              5.sH,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.kGreyColor,
                ),
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _dateOfBirth,
                        style: context.textTheme.titleMedium!.copyWith(
                            color: AppColors.kBlackColor,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          splashRadius: 20,
                          onPressed: () {
                            showDatePicker(
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: AppColors
                                          .kPrimaryColor, // <-- SEE HERE
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        primary:
                                            Colors.red, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050),
                            ).then((value) {
                              _dateOfBirth =
                                  DateFormat("dd-MM-yyyy").format(value!);
                              setState(() {});
                            });
                          },
                          icon: const Icon(
                            Icons.calendar_today,
                            size: 20,
                          ))
                    ],
                  ),
                ),
              ),
              15.sH,
              Text(
                'Expiry Date Of License',
                style: context.textTheme.labelLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Colors.grey.shade500),
              ),
              5.sH,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: AppColors.kGreyColor,
                ),
                height: 50,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        _expiryLicense,
                        style: context.textTheme.titleMedium!.copyWith(
                            color: AppColors.kBlackColor,
                            fontWeight: FontWeight.bold),
                      ),
                      IconButton(
                          splashRadius: 20,
                          onPressed: () {
                            showDatePicker(
                              builder: (context, child) {
                                return Theme(
                                  data: Theme.of(context).copyWith(
                                    colorScheme: ColorScheme.light(
                                      primary: AppColors
                                          .kPrimaryColor, // <-- SEE HERE
                                    ),
                                    textButtonTheme: TextButtonThemeData(
                                      style: TextButton.styleFrom(
                                        primary:
                                            Colors.red, // button text color
                                      ),
                                    ),
                                  ),
                                  child: child!,
                                );
                              },
                              context: context,
                              initialDate: DateTime.now(),
                              firstDate: DateTime(2000),
                              lastDate: DateTime(2050),
                            ).then((value) {
                              _expiryLicense =
                                  DateFormat("dd-MM-yyyy").format(value!);
                              setState(() {});
                            });
                          },
                          icon: const Icon(
                            Icons.calendar_today,
                            size: 20,
                          ))
                    ],
                  ),
                ),
              ),
              120.sH,
              CustomButton(
                  buttonText: 'Save And Continue',
                  onTapped: () {
                    NavigationHelper.pushRoute(
                        context, RenterUploadProofLicenseViewBody());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
