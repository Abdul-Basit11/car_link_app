import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/view/host_view/host_bottom_navigation_bar_view/host_bottom_navigation_bar_view.dart';
import 'package:flutter/material.dart';

class HostDriverPermitDetail extends StatelessWidget {
  const HostDriverPermitDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 150,
                width: double.infinity,
                color: AppColors.kPrimaryColor.withOpacity(0.2),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      20.sH,
                      GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: const Icon(
                            Icons.arrow_back,
                            color: Colors.black,
                          )),
                      15.sH,
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const CircleAvatar(
                            radius: 30,
                            backgroundImage:
                                AssetImage('asset/images/profileImage.png'),
                          ),
                          10.sW,
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Mark',
                                style: context.textTheme.titleMedium!.copyWith(
                                    fontSize: 20, fontWeight: FontWeight.w600),
                              ),
                              Text(
                                'Renter',
                                style: context.textTheme.titleMedium!
                                    .copyWith(color: Colors.grey),
                              )
                            ],
                          ),
                          const Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(
                                  onPressed: () {
                                    NavigationHelper.pushRoute(
                                        context,
                                        HostBottomNavigationBarViewBody(
                                          hostcurrentIndex: 2,
                                        ));
                                  },
                                  icon: const Icon(
                                    Icons.message,
                                    color: AppColors.kPrimaryColor,
                                  )),
                              Text(
                                'Message',
                                style: context.textTheme.labelMedium!
                                    .copyWith(color: AppColors.kPrimaryColor),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              20.sH,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Driver Permit Detail',
                      style: context.textTheme.titleMedium!
                          .copyWith(fontWeight: FontWeight.w600),
                    ),
                    10.sH,
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 6),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 2,
                                spreadRadius: 2,
                                color: Colors.grey.shade400.withOpacity(0.6))
                          ]),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Name:',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.grey),
                              ),
                              Text(
                                'John Marsh',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                          8.sH,
                          Row(
                            children: [
                              Text(
                                'Driver Permit Number:',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.grey),
                              ),
                              Text(
                                '12345678',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                          8.sH,
                          Row(
                            children: [
                              Text(
                                'Date Of Birth:',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.grey),
                              ),
                              Text(
                                '12 Jan 1999',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                          8.sH,
                          Row(
                            children: [
                              Text(
                                'Date Of Expiration:',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.grey),
                              ),
                              Text(
                                '20 June 2024',
                                style: context.textTheme.labelLarge!
                                    .copyWith(color: Colors.grey),
                              ),
                            ],
                          ),
                          10.sH,
                          Text(
                            'License Picture',
                            style: context.textTheme.titleMedium!
                                .copyWith(fontWeight: FontWeight.w500),
                          ),
                          10.sH,
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'asset/images/m8.jpg'))),
                                ),
                              ),
                              10.sW,
                              Expanded(
                                child: Container(
                                  height: 120,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: const DecorationImage(
                                          fit: BoxFit.cover,
                                          image: AssetImage(
                                              'asset/images/m8.jpg'))),
                                ),
                              ),
                            ],
                          ),
                          8.sH,
                        ],
                      ),
                    ),
                    20.sH,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Reviews',
                          style: context.textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Row(
                          children: [
                            Text(
                              '4.5',
                              style: context.textTheme.labelLarge!
                                  .copyWith(fontSize: 15),
                            ),
                            for (int i = 0; i < 4; i++)
                              Icon(
                                Icons.star,
                                color: Colors.amber.shade600,
                                size: 17,
                              ),
                            Icon(
                              Icons.star_border,
                              color: Colors.amber.shade600,
                              size: 17,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
              10.sH,
              SizedBox(
                width: double.infinity,
                height: 160,
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        padding: EdgeInsets.symmetric(horizontal: 30),
                        width: 240,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: AppColors.kPrimaryColor.withOpacity(0.1)),
                        child: Column(
                          children: [
                            10.sH,
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage(
                                      'asset/images/profileImage.png'),
                                ),
                                10.sW,
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        for (int i = 0; i < 4; i++)
                                          Icon(
                                            Icons.star,
                                            color: Colors.amber.shade600,
                                            size: 17,
                                          ),
                                        Icon(
                                          Icons.star_border,
                                          color: Colors.amber.shade600,
                                          size: 17,
                                        )
                                      ],
                                    ),
                                    Text(
                                      'John Mark',
                                      style: context.textTheme.labelLarge!
                                          .copyWith(
                                              fontSize: 15,
                                              fontWeight: FontWeight.w600),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            20.sH,
                            Text(
                              't is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution',
                              style: context.textTheme.labelMedium,
                              maxLines: 4,
                            ),
                            Spacer(),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
              100.sH,
            ],
          ),
        ),
      ),
    );
  }
}
