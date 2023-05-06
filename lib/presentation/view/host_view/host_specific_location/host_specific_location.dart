import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:country_list_pick/country_list_pick.dart';
import 'package:country_list_pick/support/code_country.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:country_state_picker/country_state_picker.dart';
import 'package:flutter/material.dart';

import '../host_location_view/host_location_view.dart';

class HostSpecificLocationViewBody extends StatefulWidget {
  const HostSpecificLocationViewBody({Key? key}) : super(key: key);

  @override
  State<HostSpecificLocationViewBody> createState() =>
      _HostSpecificLocationViewBodyState();
}

class _HostSpecificLocationViewBodyState
    extends State<HostSpecificLocationViewBody> {
  String? state;
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
                'Please Enter a Specific\nLocation',
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
                'STREET ADDRESS',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              SizedBox(
                height: 50,
                child: TextFormField(
                  cursorColor: AppColors.kPrimaryColor,
                  decoration: InputDecoration(
                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: 'Street abc',
                      hintStyle: context.textTheme.labelLarge!
                          .copyWith(color: Colors.grey)),
                ),
              ),
              10.sH,
              Text(
                'AIP/POSTAL CODE',
                style:
                context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              8.sH,
              SizedBox(
                height: 50,
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  cursorColor: AppColors.kPrimaryColor,
                  decoration: InputDecoration(

                      isDense: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(color: Colors.grey),
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                      hintText: '0000',
                      hintStyle: context.textTheme.labelLarge!
                          .copyWith(color: Colors.grey)),
                ),
              ),
60.sH,
              CustomButton(buttonText: 'Next', onTapped: (){
                NavigationHelper.pushRoute(context, HostLocationViewBody());
              }),
            ],
          ),
        ),
      ),
    );
  }
}
