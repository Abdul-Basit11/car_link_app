import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/material.dart';

import '../../host_driver_permit_detail/host_driver_permit_view.dart';

class HostingTabView extends StatelessWidget {
  const HostingTabView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Booking Request',
            style: context.textTheme.titleMedium,
          ),
          10.sH,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.kPrimaryColor.withOpacity(0.1),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Container(
                      width: 90,
                      height: 100,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('asset/images/m8.jpg')),
                          borderRadius: BorderRadius.circular(10)),
                    ),
                    10.sW,
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'BMW M8 2022',
                          style: context.textTheme.titleMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                        Text(
                          '12314yhde32y',
                          style: context.textTheme.labelLarge!
                              .copyWith(color: Colors.grey),
                        ),
                        Text(
                          'No Trips',
                          style: context.textTheme.labelLarge!.copyWith(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                5.sH,
                Divider(
                  color: AppColors.kPrimaryColor.withOpacity(0.2),
                ),
                Center(
                  child: Text(
                    'Trip Details',
                    style: context.textTheme.labelLarge!
                        .copyWith(color: AppColors.kPrimaryColor),
                  ),
                ),
                5.sH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const CircleAvatar(
                          backgroundImage:
                              AssetImage('asset/images/profileImage.png'),
                        ),
                        8.sW,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            InkWell(
                              onTap: () {
                                NavigationHelper.pushRoute(
                                    context, HostDriverPermitDetail());
                              },
                              child: Text(
                                'John Mark',
                                style: context.textTheme.labelLarge!
                                    .copyWith(fontSize: 15),
                              ),
                            ),
                            Text(
                              'Renter',
                              style: context.textTheme.labelMedium!
                                  .copyWith(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          '4.5',
                          style: context.textTheme.labelLarge,
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
                15.sH,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on_outlined,
                          color: Colors.grey,
                        ),
                        8.sW,
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Trip Destination',
                              style: context.textTheme.labelLarge!
                                  .copyWith(fontSize: 15),
                            ),
                            Text(
                              '5953 Halvorson Radial',
                              style: context.textTheme.labelMedium!
                                  .copyWith(color: Colors.grey),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.calendar_month,
                          color: Colors.grey,
                        ),
                        5.sW,
                        Column(
                          children: [
                            Text(
                              'Return Date',
                              style: context.textTheme.labelLarge,
                            ),
                            Text(
                              '12 June 2023',
                              style: context.textTheme.labelMedium!
                                  .copyWith(color: Colors.grey),
                            )
                          ],
                        ),
                      ],
                    )
                  ],
                ),
                20.sH,
                Row(
                  children: [
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: ElevatedButton(
                          style: TextButton.styleFrom(
                              elevation: 10,
                              shadowColor: Colors.grey.shade300,
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white),
                          onPressed: () {},
                          child: Text('Accept'),
                        ),
                      ),
                    ),
                    8.sW,
                    Expanded(
                      child: SizedBox(
                        height: 42,
                        child: OutlinedButton(
                          style: TextButton.styleFrom(
                              foregroundColor: AppColors.kPrimaryColor,
                              side: BorderSide(color: AppColors.kPrimaryColor)),
                          onPressed: () {},
                          child: Text('Decline'),
                        ),
                      ),
                    ),
                  ],
                ),
                10.sH
              ],
            ),
          ),
        ],
      ),
    );
  }
}
