import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/view/host_view/host_need_help_view/host_need_help_view.dart';
import 'package:car_link_app/presentation/view/rental_view/renter_bottom_navigation_bar_view/renter_bottom_navugation_bar_view.dart';
import 'package:flutter/material.dart';

import '../host_bottom_navigation_bar_view/host_bottom_navigation_bar_view.dart';
import '../host_business_view/host_business_view.dart';
import 'widget/setting_tile.dart';

class HostSettingViewBody extends StatelessWidget {
  const HostSettingViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
        title: Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(backgroundColor: Colors.red.shade100, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('asset/images/profileImage.png'),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John Mark',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Text(
                        'Driver',
                        style: Theme.of(context)
                            .textTheme
                            .labelMedium!
                            .copyWith(color: Colors.grey),
                      ),
                    ],
                  )
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              SettingTile(
                title: 'My Earning',
                onTapped: () {
NavigationHelper.pushRoute(context,HostBusinessViewBody() );
                },
                iconData: Icons.attach_money,
              ),
              SettingTile(
                title: 'My Details',
                onTapped: () {},
                iconData: Icons.home,
              ),
              SettingTile(
                title: 'History',
                onTapped: () {},
                iconData: Icons.access_time_rounded,
              ),
              SettingTile(
                title: 'Notifications',
                onTapped: () {
                  NavigationHelper.pushRoute(context,HostBottomNavigationBarViewBody(hostcurrentIndex: 1,));
                },
                iconData: Icons.notifications_active,
              ),
              // SettingTile(
              //   title: 'Settnig',
              //   onTapped: () {},
              //   iconData: Icons.settings,
              // ),
              SettingTile(
                title: 'About',
                onTapped: () {},
                iconData: Icons.error_outline,
              ),
              SettingTile(
                title: 'Help',
                onTapped: () {
NavigationHelper.pushRoute(context,HostNeedHelpViewBody());
                },
                iconData: Icons.help_outline,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
