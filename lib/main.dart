import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:flutter/material.dart';

import 'presentation/view/host_view/host_login_view/layout/body.dart';
import 'presentation/view/host_view/host_tell_us_about_your_car/tell_us_about_car_view.dart';
import 'presentation/view/host_view/host_vehicle_view/host_vehicle_view.dart';
import 'presentation/view/rental_view/renter_find_dream_car/renter_find_dream_car_view.dart';
import 'presentation/view/rental_view/renter_location/renter_location_view.dart';
import 'presentation/view/rental_view/renter_login_view/renter_view.dart';
import 'presentation/view/rental_view/renter_splash_view/renter_splash_view.dart';
import 'presentation/view/rental_view/renter_verify_phone_number_view/renter_verify_phone_number_view.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Car Link',
      theme: AppThemes.myTheme(context),
      //home: RenterSplashView(),
      //home: RenterLoginView(),/// login renter side
      //home: RenterFindDreamCarViewBody(),
      //home: RenterLocationViewBody(),
      //home: HostVihcleViewBody(),
      //home: HostLoginViewBody(),
      home: TellUsAboutYourCarViewBody(),
    );
  }
}
