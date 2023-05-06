import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:flutter/material.dart';

import '../../host_view/host_book_your_car/host_book_your_car_view.dart';
import '../renter_book_your_car/renter_book_your_car_view.dart';
import 'widget/option_button.dart';

class RenterRentCarTravelViewBody extends StatelessWidget {
  const RenterRentCarTravelViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 10,
              ),
              Image.asset(
                'asset/images/applogo.png',
                height: 12,
              ),
              const SizedBox(
                height: 5,
              ),
              Text('Rent a Car To\nTravel',
                  style: Theme.of(context)
                      .textTheme
                      .titleMedium!
                      .copyWith(fontSize: 24, fontWeight: FontWeight.bold,height: 0)),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Don’t sit home, it’s time\nto ride',
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                    fontFamily: 'Bahnschrift', fontWeight: FontWeight.bold),
              ),
              Center(child: Image.asset('asset/images/rent.png')),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'Who are You?',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(fontSize: 16),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              OptionButton(
                  title: 'Host',
                  onTapped: () {
                    NavigationHelper.pushRoute(
                        context, HostBookYourCarEasilyViewBody());
                  }),
              Center(
                  child: Text(
                'or',
                style: Theme.of(context)
                    .textTheme
                    .labelMedium!
                    .copyWith(fontSize: 16),
              )),
              OptionButton(
                  title: 'Renter',
                  onTapped: () {
                    NavigationHelper.pushRoute(
                        context, const RenterBookYourCarEasilyViewBody());
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
