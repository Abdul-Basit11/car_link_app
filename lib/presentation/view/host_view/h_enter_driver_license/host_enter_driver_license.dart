import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:country_state_picker/country_state_picker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../congiguration/app_colors.dart';
import '../../../element/custom_button.dart';
import '../host_advanced_notice/host_advanced_notice.dart';

class HostEnterDriverLicenseViewBody extends StatefulWidget {
  @override
  State<HostEnterDriverLicenseViewBody> createState() =>
      _HostEnterDriverLicenseViewBodyState();
}

class _HostEnterDriverLicenseViewBodyState
    extends State<HostEnterDriverLicenseViewBody> {
  String? state;
  String _dateOfBirth = '';
  String _expirationDate = '';
  String _dateofIssuance = '';

  String? country;

  CountryCode _selectedCountry = CountryCode(
    dialCode: '+1',
    code: 'US',
    flagUri: 'asset/images/flag.png',
    name: 'United State',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Icon(Icons.close),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              20.sH,
              Text(
                "Enter driver's license",
                style: context.textTheme.titleMedium!
                    .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              20.sH,
              CountryStatePicker(
                inputDecoration: InputDecoration(
                    border: InputBorder.none,
                    isDense: true,
                    hintText: 'Select Country',
                    hintStyle: context.textTheme.labelMedium!
                        .copyWith(color: Colors.grey)),
                onCountryChanged: (ct) => setState(() {
                  country = ct;
                  state = null;
                }),
                onStateChanged: (st) => setState(() {
                  state = st;
                }),
              ),
              10.sH,
              Text(
                'LICENSE NUMBER',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              textField(
                  context, 'Enter your license number', TextInputType.number),
              10.sH,
              Text(
                'DATE OF ISSUANCE',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey)),
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
                              _dateofIssuance =
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
              10.sH,
              Text(
                'FIRST NAME',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              textField(context, 'Enter Name', TextInputType.number),
              10.sH,
              Text(
                'MIDDLE NAME',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              textField(context, 'Enter Middle Name', TextInputType.number),
              10.sH,
              Text(
                'LAST NAME',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              textField(context, 'Enter Last Name', TextInputType.number),
              10.sH,
              Text(
                'EXPIRATION DATE',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey)),
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
                              _expirationDate =
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
              10.sH,
              Text(
                'DATE OF BIRTH',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: Colors.grey)),
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
                              _dateofIssuance =
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
              60.sH,
              CustomButton(
                  buttonText: 'SAVE AND CONTINUE',
                  onTapped: () {
                    NavigationHelper.pushRoute(
                        context, HostAdvancedNoticeViewBody());
                  }),
              15.sH,
            ],
          ),
        ),
      ),
    );
  }

  Widget textField(
      BuildContext context, String hintText, TextInputType textInputType) {
    return TextFormField(
      keyboardType: textInputType,
      cursorColor: AppColors.kPrimaryColor,
      style: Theme.of(context)
          .textTheme
          .titleSmall!
          .copyWith(color: AppColors.kBlackColor),
      decoration: InputDecoration(
        isDense: true,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: Colors.grey, width: 2)),
        hintText: hintText,
        hintStyle: context.textTheme.labelLarge!.copyWith(color: Colors.grey),
      ),
    );
  }
}
