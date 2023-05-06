import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/view/host_view/host_login_view/layout/body.dart';
import 'package:flutter/material.dart';

import '../host_create_account_view/host_create_account_view.dart';




class HostBookYourCarEasilyViewBody extends StatelessWidget {
  const  HostBookYourCarEasilyViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
extendBody: true,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Container(
        //  width: size.width,
         height: size.height+250,
        decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
                image: AssetImage('asset/images/land.png'))),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'asset/images/applogo.png',
                    height: 12,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text('Book Your Car',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        backgroundColor: Colors.red.shade100, wordSpacing: 1,fontSize: 24),),
                  const SizedBox(
                    height: 2,
                  ),
                  Text('Easily',

                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      backgroundColor: Colors.red.shade100, wordSpacing: 1,fontSize: 24),),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummynibh euismod',
                    style: Theme.of(context).textTheme.labelMedium !.copyWith(
                        fontFamily: 'Bahnschrift',fontWeight: FontWeight.w600
                    ),
                  ),
                  const SizedBox(
                    height: 250,
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.66,
                          height: 46,
                          decoration: BoxDecoration(
                              color: AppColors.kWhiteColor,
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Spacer(),
                              Image.asset(
                                'asset/images/google.png',
                                height: 30,
                              ),
                              Spacer(),
                              Text(
                                'Continue with Google',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                              ),
                              Spacer(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        GestureDetector(
                          onTap: (){
                            NavigationHelper.pushRoute(context, HostCreateAccountViewBody());
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.66,
                            height: 46,
                            decoration: customBoxDecoration(),
                            child: Center(
                                child: Text(
                              'Other Signup Options',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!.copyWith(
                                color: Colors.white
                              )
                            )),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Already have an account? ',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(color: AppColors.kWhiteColor,fontSize: 13),
                            ),

                            GestureDetector(
                              onTap: (){
                                NavigationHelper.pushRoute(context, HostLoginViewBody());
                              },
                              child: Text(
                                'Log in',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(color: AppColors.kPrimaryColor),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'By signing up, you agree to our ',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium!
                                    .copyWith(color: AppColors.kWhiteColor,fontSize: 14,fontWeight: FontWeight.w600),
                              ),

                              Text(
                                'Terms and Condtions',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge!
                                    .copyWith(color: AppColors.kPrimaryColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
