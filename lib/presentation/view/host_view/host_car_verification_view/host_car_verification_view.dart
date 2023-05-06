import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:car_link_app/presentation/element/custom_text_field.dart';
import 'package:car_link_app/presentation/view/host_view/host_bottom_navigation_bar_view/host_bottom_navigation_bar_view.dart';
import 'package:flutter/material.dart';

import '../../../../navigation_helper/navigation_helper.dart';
import '../host_add_new_vehicle_view/host_add_new_vehicle_view.dart';

class HostCarVerificationViewBody extends StatelessWidget {
  const HostCarVerificationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                'asset/images/applogo.png',
                height: 12,
              ),
              const SizedBox(
                height: 30,
              ),
              ListTile(
                minLeadingWidth: 1,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.insert_drive_file_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  'License Plate Number',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(backgroundColor: Colors.red.shade100,fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextField(hintText: 'Enter Your License Plate Number'),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                minLeadingWidth: 1,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.insert_drive_file_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  'Chassis Number',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(backgroundColor: Colors.red.shade100,fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextField(hintText: 'Enter Your Chassis Number'),
              const SizedBox(
                height: 10,
              ),
              ListTile(
                minLeadingWidth: 1,
                contentPadding: EdgeInsets.zero,
                leading: const Icon(
                  Icons.insert_drive_file_rounded,
                  color: Colors.black,
                ),
                title: Text(
                  'Engine Number',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(backgroundColor: Colors.red.shade100,fontWeight: FontWeight.bold),
                ),
              ),
              CustomTextField(hintText: 'Enter Your Engine Number'),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: CustomButton(buttonText: 'Next', onTapped: () {
                  NavigationHelper.pushRoute(context,HostBottomNavigationBarViewBody());
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
