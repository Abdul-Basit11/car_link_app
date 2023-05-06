import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/presentation/view/host_view/host_car_home_view/host_car_home_view.dart';
import 'package:flutter/material.dart';

import '../host_chat_view/host_chat_view_body.dart';
import '../host_notification_view/host_notification_view_body.dart';
import '../host_setting_view/host_setting_view.dart';


class HostBottomNavigationBarViewBody extends StatefulWidget {
    int hostcurrentIndex;
    HostBottomNavigationBarViewBody({this.hostcurrentIndex=0});
  @override
  State<HostBottomNavigationBarViewBody> createState() =>
      _HostBottomNavigationBarViewBodyState();
}

class _HostBottomNavigationBarViewBodyState
    extends State<HostBottomNavigationBarViewBody> {
  //int initialIndex = 0;


  List<Widget> hostScreens = [
  const HostCarHomeViewBody(),
  const HostNotificationViewBody(),
  const HostChatViewBody(),
  const HostSettingViewBody(),
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  hostScreens.elementAt(widget.hostcurrentIndex) ,
      bottomNavigationBar: Container(
        decoration:  BoxDecoration(
            boxShadow: [BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 5)]),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: AppColors.kBlackColor,
          currentIndex: widget.hostcurrentIndex,
          onTap: (v) {
            setState(() {
              widget.hostcurrentIndex = v;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: widget.hostcurrentIndex == 0
                    ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 35,
                        decoration: customBoxDecoration(),
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.home,
                                color: AppColors.kWhiteColor,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Home',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.kWhiteColor,
                                        fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      )
                    : const Icon(
                        Icons.home,
                        size: 20,
                      ),
                label: 'Home'),

            /// notification
            BottomNavigationBarItem(
                icon: widget.hostcurrentIndex == 1
                    ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 35,
                        decoration: customBoxDecoration(),
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.notifications_active,
                                color: AppColors.kWhiteColor,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Notification',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.kWhiteColor,
                                        fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      )
                    : const Icon(
                        Icons.notifications_active,
                        size: 20,
                      ),
                label: 'Notification'),

            BottomNavigationBarItem(
                icon: widget.hostcurrentIndex == 2
                    ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 35,
                        decoration: customBoxDecoration(),
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.mail,
                                color: AppColors.kWhiteColor,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Messages',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.kWhiteColor,
                                        fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      )
                    : const Icon(
                        Icons.mail,
                        size: 20,
                      ),
                label: 'Messages'),

            BottomNavigationBarItem(
                icon: widget.hostcurrentIndex == 3
                    ? Container(
                        margin: const EdgeInsets.symmetric(horizontal: 5),
                        height: 35,
                        decoration: customBoxDecoration(),
                        child: FittedBox(
                          fit: BoxFit.none,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Icon(
                                Icons.settings,
                                color: AppColors.kWhiteColor,
                                size: 18,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Settings',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: AppColors.kWhiteColor,
                                        fontSize: 12),
                              )
                            ],
                          ),
                        ),
                      )
                    : const Icon(
                        Icons.settings,
                        size: 20,
                      ),
                label: 'Settings'),
          ],
        ),
      ),
    );
  }
}
