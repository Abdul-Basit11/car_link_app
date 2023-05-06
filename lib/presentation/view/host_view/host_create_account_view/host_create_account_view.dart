import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

import '../../../../congiguration/app_colors.dart';
import '../../../element/custom_button.dart';
import '../../../element/custom_text_field.dart';
import '../host_verify_phone_number_view/host_verify_phone_number_view.dart';

class HostCreateAccountViewBody extends StatelessWidget {
  const HostCreateAccountViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'asset/images/applogo.png',
                height: 12,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(' Create Account',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      backgroundColor: Colors.red.shade100,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
              Text(
                'Lorem ipsum dolor sit amet, consec',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontFamily: 'Bahnschrift',
                    fontWeight: FontWeight.w600,
                    color: Colors.grey),
              ),
              const SizedBox(
                height: 25,
              ),
              Text(
                'Full Name',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                hintText: 'Enter Your Full Name',
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Email',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              const SizedBox(
                height: 5,
              ),
              CustomTextField(
                hintText: 'Enter Your email address',
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                'Country Code',
                style: Theme.of(context).textTheme.labelLarge,
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.kGreyColor,
                    borderRadius: BorderRadius.circular(8)),
                child: InternationalPhoneNumberInput(
                  inputBorder: InputBorder.none,
                  onInputChanged: (value) {},
                  hintText: 'Phone Number',
                  textStyle: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(color: Colors.grey.shade600, fontSize: 13),
                  formatInput: false,
                  selectorConfig: const SelectorConfig(
                      selectorType: PhoneInputSelectorType.DROPDOWN,
                      leadingPadding: 0,
                      trailingSpace: false,
                      showFlags: true),
                  searchBoxDecoration: InputDecoration(
                    alignLabelWithHint: true,
                    filled: true,
                    fillColor: AppColors.kGreyColor,
                    hintText: 'Phone Number',
                    hintStyle: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(color: Colors.grey, fontSize: 10),
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: CustomButton(
                  onTapped: () {
                    NavigationHelper.pushReplacement(
                        context, const HostVerifyPhoneNumberViewBody());
                  },
                  buttonText: 'Create Account',
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                  child: Text(
                'or',
                style: Theme.of(context).textTheme.labelLarge,
              )),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?',
                      style: Theme.of(context).textTheme.labelLarge),
                  const SizedBox(
                    width: 4,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Text('Log in',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: AppColors.kPrimaryColor)),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
