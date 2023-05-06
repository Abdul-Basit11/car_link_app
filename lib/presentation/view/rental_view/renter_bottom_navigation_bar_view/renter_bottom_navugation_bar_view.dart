import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:flutter/material.dart';

import '../renter_chat_view/renter_chat_view_body.dart';
import '../renter_find_car_for_you_view/renter_find_car_for_you_view.dart';
import '../renter_notification_view/renter_notification_view_body.dart';
import '../renter_setting_view/renter_setting_view.dart';



class RenterBottomNavigationBarViewBody extends StatefulWidget {
  int rentercurrentIndex;
  RenterBottomNavigationBarViewBody({
    this.rentercurrentIndex = 0,
  });
  @override
  State<RenterBottomNavigationBarViewBody> createState() =>
      _RenterBottomNavigationBarViewBodyState();
}

class _RenterBottomNavigationBarViewBodyState
    extends State<RenterBottomNavigationBarViewBody> {

  List<Widget> renterScreens = [
    const RenterFindCarForYouViewBody(),
    const RenterNotificationViewBody(),
    const RenterChatViewBody(),
    const RenterSettingViewBody(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: renterScreens.elementAt(widget.rentercurrentIndex),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.6), blurRadius: 5)
        ]),
        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          unselectedItemColor: AppColors.kBlackColor,
          currentIndex: widget.rentercurrentIndex,
          onTap: (v) {
            setState(() {
              widget.rentercurrentIndex = v;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: widget.rentercurrentIndex == 0
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
                icon: widget.rentercurrentIndex == 1
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
                icon: widget.rentercurrentIndex == 2
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
                icon: widget.rentercurrentIndex == 3
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
