import 'dart:async';

import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';

import '../../renter_get_started_view/renter_get_started_view_body.dart';




class RenterSplashViewBody extends StatefulWidget {
  @override
  State<RenterSplashViewBody> createState() => _RenterSplashViewBodyState();
}

class _RenterSplashViewBodyState extends State<RenterSplashViewBody> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      NavigationHelper.pushReplacement(context,RenterGetStartedViewBody());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image.asset(
          'asset/images/applogo.png',
          scale: 2.3,
        ),
      ),
    );
  }
}
