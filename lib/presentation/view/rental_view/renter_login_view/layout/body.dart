import 'package:car_link_app/presentation/view/rental_view/renter_create_account_view/renter_create_account_view.dart';
import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';
import '../../../../../congiguration/app_images.dart';
import '../../../../../navigation_helper/navigation_helper.dart';
import '../../../../element/custom_button.dart';
import '../../../../element/custom_text_field.dart';

class RenterLoginViewBody extends StatelessWidget {
  const RenterLoginViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Center(
                    child: Image.asset(
                  AppImages.appLogo,
                  height: 25,
                )),
                SizedBox(
                  height: 40,
                ),
                Text('Login',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 20, fontWeight: FontWeight.w600)),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Email',
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
                  'Password',
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                const SizedBox(
                  height: 5,
                ),
                CustomTextField(
                  hintText: 'Enter Password',
                ),
                const SizedBox(
                  height: 40,
                ),
                CustomButton(
                  onTapped: () {},
                  buttonText: 'Login',
                ),
                const SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Dont have an account?',
                        style: Theme.of(context).textTheme.labelLarge),
                    const SizedBox(
                      width: 4,
                    ),
                    GestureDetector(
                      onTap: () {
                        NavigationHelper.pushRoute(
                            context, RenterCreateAccountViewBody());
                      },
                      child: Text('Create Account',
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
      ),
    );
  }
}
