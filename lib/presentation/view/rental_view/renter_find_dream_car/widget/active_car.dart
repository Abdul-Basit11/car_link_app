import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';

class ActiveRide extends StatelessWidget {
  const ActiveRide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: buildAppBar(context),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              Align(
                  alignment: Alignment.centerRight,
                  child: OutlinedButton(
                      style: TextButton.styleFrom(
                        side: BorderSide(
                            color: AppColors.kPrimaryColor, width: 1),
                        foregroundColor: AppColors.kPrimaryColor,
                      ),
                      onPressed: () {
                        showDialog(
                            context: context,
                            builder: (context) {
                              return Dialog(
                                child: Container(
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            border: Border.all(
                                                color: Colors.green)),
                                        child: Center(
                                          child: Image.asset(
                                              'asset/images/chekered.png'),
                                        ),
                                      ),
                                      10.sH,
                                      Text(
                                        'Ride Finish',
                                        style: context.textTheme.titleMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      5.sH,
                                      Text(
                                        'Your current ride for the car BMW M8 has been ended',
                                        textAlign: TextAlign.center,
                                        style: context.textTheme.labelMedium!
                                            .copyWith(
                                                fontWeight: FontWeight.bold),
                                      ),
                                      10.sH,
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 40.0),
                                        child: CustomButton(
                                            buttonText: 'Review Host',
                                            onTapped: () {
                                              Navigator.pop(context);
                                            }),
                                      ),
                                    ],
                                  ),
                                ),
                              );
                            });
                      },
                      child: Text('Finish Ride'))),
              Text(
                'BMW M8 2022',
                style: context.textTheme.titleMedium!
                    .copyWith(fontWeight: FontWeight.bold),
              ),
              Text('1234SF45678287267',
                  style: context.textTheme.labelLarge!
                      .copyWith(color: Colors.grey)),
              Center(
                child: Image.asset(
                  'asset/images/active.png',
                  height: 300,
                  width: 200,
                  fit: BoxFit.contain,
                ),
              ),
              20.sH,
              Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  decoration: BoxDecoration(
                      border: Border.all(color: AppColors.kPrimaryColor),
                      borderRadius: BorderRadius.circular(30)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      const Icon(
                        Icons.access_time,
                      ),
                      10.sW,
                      Text(
                        '00:30 min',
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            fontSize: 16, fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
              10.sH,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Icon(
                    Icons.flash_on_rounded,
                    color: AppColors.kPrimaryColor,
                  ),
                  Text(
                    '20 Km ride left',
                    style: context.textTheme.labelMedium!
                        .copyWith(color: Colors.grey),
                  )
                ],
              ),
              10.sH,
            ],
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
        style: Theme.of(context)
            .textTheme
            .titleMedium!
            .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
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
