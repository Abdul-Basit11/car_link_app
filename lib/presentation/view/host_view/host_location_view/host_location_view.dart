import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:flutter/material.dart';

import '../../../../navigation_helper/navigation_helper.dart';
import '../../../element/custom_button.dart';
import '../host_tell_us_about_your_car/tell_us_about_car_view.dart';

class HostLocationViewBody extends StatelessWidget {
  const HostLocationViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  20.sH,
                  Text(
                    'Siri Lanka,ABC street no 3',
                    style: context.textTheme.titleMedium!
                        .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.location_on_outlined,
                        color: Colors.grey,
                        size: 22,
                      ),
                      4.sW,
                      Text(
                        '5953 Halvoroson Radial',
                        style: context.textTheme.labelLarge!.copyWith(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.grey.shade500),
                      )
                    ],
                  ),
                  8.sH,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Icon(
                        Icons.error,
                        color: Colors.grey,
                        size: 22,
                      ),
                      4.sW,
                      Expanded(
                        child: Text(
                          'if you are reached at the locaion click on next to continue',
                          style: context.textTheme.labelLarge!.copyWith(
                              fontWeight: FontWeight.bold,
                              fontSize: 15,
                              color: Colors.grey.shade500),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
            10.sH,
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/images/maplocation.jpg'))),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  onTapped: () {
                     NavigationHelper.pushRoute(context, const TellUsAboutYourCarViewBody());
                  },
                  buttonText: 'Confirm Location',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
