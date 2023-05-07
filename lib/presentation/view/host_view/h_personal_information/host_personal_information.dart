import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/material.dart';

import '../h_enter_driver_license/host_enter_driver_license.dart';

class HostPersonalInformationViewBody extends StatelessWidget {
  const HostPersonalInformationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'PROFILE INFORMATION',
                style: context.textTheme.titleMedium!
                    .copyWith(fontSize: 22, fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 16),
              Text(
                'Adding a photo helps users recognize each other when picking up the car.',
                style:
                    context.textTheme.labelLarge!.copyWith(color: Colors.grey),
              ),
              20.sH,
              Center(
                child: Stack(
                  children: [
                    CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.grey[300],
                      backgroundImage:
                          const AssetImage('assets/user_placeholder.png'),
                    ),
                  ],
                ),
              ),
              20.sH,
              SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    style: TextButton.styleFrom(

                      foregroundColor: Colors.grey
                    ),
                      onPressed: () {}, child: Text('Add a photo'))),
              20.sH,
              Text(
                'PHONE NUMBER',
                style: context.textTheme.labelLarge!
                    .copyWith(color: Colors.grey, fontSize: 13),
              ),
              Row(
                children: [
                  Expanded(
                    flex: 2,
                    child: SizedBox(
                      height: 48,
                      child: CountryCodePicker(
                        boxDecoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        showDropDownButton: true,
                        showFlag: false,
                        // searchDecoration: InputDecoration(
                        //   enabled: true,
                        //   border: OutlineInputBorder(
                        //       borderSide: BorderSide(color: Colors.grey)),
                        //   enabledBorder: OutlineInputBorder(
                        //       borderSide: BorderSide(color: Colors.grey)),
                        // ),
                        initialSelection: 'US',
                        favorite: ['+1', 'US'],
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    flex: 5,
                    child: TextFormField(
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                        isDense: true,
                        hintText: 'Phone',
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),
              80.sH,
              CustomButton(buttonText: 'SAVE AND CONTINUE', onTapped: () {
                NavigationHelper.pushRoute(context,HostEnterDriverLicenseViewBody() );
              }),
            ],
          ),
        ),
      ),
    );
  }
}
