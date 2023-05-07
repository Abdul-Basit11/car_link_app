import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/material.dart';

import '../h_tell_us_about_ur_car_with_detail/h_tell_us_about_ur_car_with_detail.dart';

class HostEnterCarDetailViewBody extends StatefulWidget {
  const HostEnterCarDetailViewBody({Key? key}) : super(key: key);

  @override
  State<HostEnterCarDetailViewBody> createState() =>
      _HostEnterCarDetailViewBodyState();
}

class _HostEnterCarDetailViewBodyState
    extends State<HostEnterCarDetailViewBody> {
  String _selectedValue = 'manual';
  bool isSwitchOn = false;
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
                'Enter Car Details',
                style: context.textTheme.titleMedium!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              5.sH,
              Text(
                'Enter your Car Detail',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 15),
              ),
              8.sH,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Car Model Year is 1981 or later',
                    style: context.textTheme.labelLarge!.copyWith(),
                  ),
                  Switch(
                      thumbColor:
                          MaterialStatePropertyAll(AppColors.kPrimaryColor),
                      activeTrackColor:
                          AppColors.kPrimaryColor.withOpacity(0.4),
                      value: isSwitchOn,
                      onChanged: (v) {
                        setState(() {
                          isSwitchOn = v;
                        });
                      }),
                ],
              ),
              10.sH,
              Text(
                'WHAT CAR DO YOU HAVE',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 13),
              ),
              4.sH,
              textField(context, 'e.g :BMW A7', TextInputType.text),
              10.sH,
              Text(
                'VEHICLE REGISTRATION PLATE NUMBER',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 13),
              ),
              4.sH,
              textField(context, 'e.g :348D', TextInputType.text),
              10.sH,
              Text(
                'CHASSIS NUMBER',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 13),
              ),
              4.sH,
              textField(context, 'e.g :ES123DWIU', TextInputType.text),
              10.sH,
              Text(
                'ENGINE NUMBER',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 13),
              ),
              4.sH,
              textField(context, 'e.g :ES123DWIU', TextInputType.text),
              10.sH,
              Text(
                'MILAGE in (km)',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 13),
              ),
              4.sH,
              textField(context, 'e.g :120', TextInputType.number),
              10.sH,
              Text(
                '\$Price/Day',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 13),
              ),
              4.sH,
              textField(context, 'e.g :94', TextInputType.number),
              15.sH,

              Row(
                children: [
                      Text(
                        'Transmission',
                        style: context.textTheme.labelLarge!.copyWith(
                          color: Colors.grey
                        ),
                      ),
                  Spacer(flex: 3,),
                  Radio(
                    activeColor: AppColors.kPrimaryColor,

                    value: 'manual',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  Text('Manual',
                    style: context.textTheme.labelLarge!.copyWith(
                        color: Colors.grey
                    ),),
                 5.sW,
                  Radio(
                    activeColor: AppColors.kPrimaryColor,
                    value: 'automic',
                    groupValue: _selectedValue,
                    onChanged: (value) {
                      setState(() {
                        _selectedValue = value!;
                      });
                    },
                  ),
                  Text('Automatic',
                    style: context.textTheme.labelLarge!.copyWith(
                        color: Colors.grey
                    ),),
                ],
              ),
              30.sH,
              CustomButton(buttonText: 'SAVE AND CONTINUE', onTapped: (){

                NavigationHelper.pushRoute(context, HostTellUsAboutUrCarWithDetailViewBody());
              }),
              20.sH,
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
        border: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey, width: 2)),
        hintText: hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Colors.grey.shade600, fontSize: 13),
      ),
    );
  }
}
