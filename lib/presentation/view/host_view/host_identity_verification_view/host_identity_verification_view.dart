import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../host_car_verification_view/host_car_verification_view.dart';
import 'widget/identity_tile.dart';

class HostIdentityVerificationViewBody extends StatelessWidget {
  const HostIdentityVerificationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Identity Verification',
          style: Theme.of(context).textTheme.titleMedium,
        ),
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
              Image.asset(
                'asset/images/identity.png',
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 20,
              ),
              const IdentityTile(
                title: 'Driving License Pictures',
                subTitle: '(Front and Back)',
              ),
              const IdentityTile(
                title: 'National Identity Card',
                subTitle: '(Front and Back)',
              ),
              const IdentityTile(
                title: 'Engine Number',
                subTitle: 'Verification',
              ),
              const IdentityTile(
                title: 'License Plate Number ',
                subTitle: 'Verification',
              ),
              const IdentityTile(
                title: 'Chassis Number ',
                subTitle: 'Verification',
              ),

              const SizedBox(
                height: 25,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: CustomButton(
                    buttonText: 'Next',
                    onTapped: () {
                      NavigationHelper.pushRoute(
                          context, HostCarVerificationViewBody());
                    }),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
