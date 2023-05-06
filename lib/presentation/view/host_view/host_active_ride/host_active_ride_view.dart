import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/material.dart';

import '../host_review_passanger_view/host_review_passanger_view.dart';


class HostActiveRideViewBody extends StatelessWidget {
  const HostActiveRideViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              children: [
                Center(
                  child: Container(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(15)),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children:  [
                        const Icon(
                          Icons.access_time,
                          color: Colors.white,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '00:30 min',
                          style: Theme.of(context).textTheme.labelLarge!.copyWith(color: Colors.white,fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                Stack(
                  children: [
                    Center(
                      child: Image.asset(
                        'asset/images/active.png',
                        height: 300,
                        width: 200,
                        fit: BoxFit.contain,
                      ),
                    ),
                    Positioned(
                      right: 90,
                      left: 90,
                      top: 120,
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 5, vertical: 5),
                        decoration: BoxDecoration(
                            color: AppColors.kWhiteColor,
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.withOpacity(0.8),
                                  blurRadius: 15,
                                  spreadRadius: 1),
                            ]),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Icon(
                              Icons.flash_on,
                            ),
                            Text(
                              '\t\t250 KM ',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium!
                                  .copyWith(color: AppColors.kPrimaryColor),
                            ),
                            Text('Left',
                                style: Theme.of(context).textTheme.titleMedium),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'asset/images/lockcar.png',
                          scale: 1.8,
                        ),
                        Text(
                          'Lock Car',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          'asset/images/parkcar.png',
                          scale: 1.8,
                        ),
                        Text(
                          'Park Car',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        const Icon(
                          Icons.report_gmailerrorred_outlined,
                          size: 45,
                        ),
                        Text(
                          'Report',
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50.0),
                  child: CustomButton(buttonText: 'End Ride', onTapped: () {
                    NavigationHelper.pushRoute(context,HostReviewPassangerViewBody() );

                  }),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: const Icon(Icons.arrow_back),
      ),
      centerTitle: true,
      title: Text(
        'Active Ride',
        style: Theme.of(context).textTheme.titleMedium!.copyWith(fontSize: 24,fontWeight: FontWeight.bold),
      ),
      toolbarHeight: 100,
      flexibleSpace: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
          colors: [
            AppColors.kPrimaryColor,
            AppColors.kWhiteColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: [0, 2],
        )),
      ),
    );
  }
}
