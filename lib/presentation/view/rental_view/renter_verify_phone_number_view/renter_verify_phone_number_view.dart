import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../host_view/host_become_a_hoster_view/host_become_a_hoster_view.dart';
import '../renter_prefer_brand_car/renter_prefer_brand_car_view.dart';

class RenterVerifyPhoneNumberViewBody extends StatelessWidget {
  const RenterVerifyPhoneNumberViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
                width: double.infinity,
                decoration: BoxDecoration(
                    color: AppColors.kWhiteColor,
                    borderRadius: BorderRadius.circular(70),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          blurRadius: 25,
                          spreadRadius: 5),
                    ]),
                child: Column(
                  children: [
                    Image.asset(
                      'asset/images/applogo.png',
                      height: 12,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Image.asset(
                      'asset/images/verify.png',
                      height: 150,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Verify Phone Number',
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: 22),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    FittedBox(
                      child: Text(
                        'Check your SMS messages. We have sent you',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(
                                fontWeight: FontWeight.w700, fontSize: 13),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'a pin to the number',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 13),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          '+12345678910',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 13,
                                  color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        buildSizedBox(context),
                        buildSizedBox(context),
                        buildSizedBox(context),
                        buildSizedBox(context),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Didn’t recieve SMS?',
                            style: Theme.of(context)
                                .textTheme
                                .labelMedium!
                                .copyWith(fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 4,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Resend code',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    color: AppColors.kPrimaryColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 13),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 45.0),
                        child: CustomButton(
                            buttonText: 'Verify',
                            onTapped: () {
                              showDialog(
                                  context: context,
                                  builder: (context) {
                                    return Dialog(
                                      child: Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Container(
                                                padding:
                                                    const EdgeInsets.all(20),
                                                decoration: BoxDecoration(
                                                    border: Border.all(
                                                      color: Colors.green,
                                                    ),
                                                    shape: BoxShape.circle),
                                                child: const Icon(
                                                  Icons.done,
                                                  size: 30,
                                                  color: Colors.green,
                                                )),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Text(
                                                'Your Account Created Successfully',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .labelMedium!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.bold)),
                                            const SizedBox(
                                              height: 20,
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      horizontal: 40.0),
                                              child: CustomButton(
                                                  buttonText: 'Done',
                                                  onTapped: () {
                                                    Navigator.of(context)
                                                      ..pop()
                                                      ..pushReplacement(
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  RenterPreferBrandCarViewBody()));
                                                  }),
                                            ),
                                            const SizedBox(
                                              height: 15,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  });
                            })),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  SizedBox buildSizedBox(
    BuildContext context,
  ) {
    return SizedBox(
      height: 45,
      width: 40,
      child: TextFormField(
        cursorColor: AppColors.kPrimaryColor,
        onChanged: (v) {
          if (v.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontWeight: FontWeight.bold, fontSize: 20),
        inputFormatters: [LengthLimitingTextInputFormatter(1)],
        textAlign: TextAlign.center,
        decoration: const InputDecoration(
            border: UnderlineInputBorder(
                borderSide: BorderSide(color: AppColors.kPrimaryColor)),
            focusedBorder: UnderlineInputBorder(
                borderSide:
                    BorderSide(color: AppColors.kPrimaryColor, width: 2)),
            hintText: '0',
            hintStyle: TextStyle(fontSize: 20)),
      ),
    );
  }
}
