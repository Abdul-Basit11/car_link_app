import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';

import 'package:flutter/material.dart';

import '../host_active_ride/host_active_ride_view.dart';
import '../host_add_new_vehicle_view/host_add_new_vehicle_view.dart';
import '../host_my_trips_view/host_my_trips_view.dart';

class HostCarHomeViewBody extends StatelessWidget {
  const HostCarHomeViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
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
                  Text(
                    "Vehicle",
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 24,fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Listing',
                        style: Theme.of(context).textTheme.titleMedium,
                      ),
                      GestureDetector(
                        onTap: (){
                          NavigationHelper.pushRoute(context, HostActiveRideViewBody());
                        },
                        child: Container(
                           padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                          decoration: customBoxDecoration(),
                          child: Text('Active Ride',style: Theme.of(context).textTheme.labelMedium!.copyWith(
                            color: AppColors.kWhiteColor,
                            fontSize: 14
                          ),),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Divider(
              thickness: 3,
              color: AppColors.kPrimaryColor,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: (){
                      NavigationHelper.pushRoute(context, HostMyTripsViewBody());
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 105,
                            width: 105,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/images/listin1.png')),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                    child: Text(
                                  'Lamborghini Gallardo C-Cl.....2019',
                                  style: Theme.of(context).textTheme.labelMedium,
                                )),
                                Text(
                                  'C 300',
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  'Cns0786',
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  'New Listing',
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  'Inspection Overdue',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(color: AppColors.kPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){
                      NavigationHelper.pushRoute(context, HostMyTripsViewBody());
                    },
                    child: Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            height: 105,
                            width: 105,
                            decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('asset/images/listing2.png')),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                FittedBox(
                                    child: Text(
                                  'Lamborghini Gallardo C-Cl.....2019',
                                  style: Theme.of(context).textTheme.labelMedium,
                                )),
                                Text(
                                  'C 300',
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  'Cns0786',
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  'New Listing',
                                  style: Theme.of(context).textTheme.labelMedium,
                                ),
                                Text(
                                  'Inspection Overdue',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium!
                                      .copyWith(color: AppColors.kPrimaryColor),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButton: GestureDetector(
        onTap: (){
          NavigationHelper.pushRoute(context,HostAddNewVehicleViewBody());
        },
        child: Container(
          height: 55,
          width: 55,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(colors: [
              AppColors.kBlackColor,
              AppColors.kPrimaryColor,
            ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
          ),
          child: Center(
              child: Text(
            '+',
            style: Theme.of(context)
                .textTheme
                .titleMedium!
                .copyWith(color: AppColors.kWhiteColor),
          )),
        ),
      ),
    );
  }
}
