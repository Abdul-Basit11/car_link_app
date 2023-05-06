import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/presentation/view/host_view/host_vehicle_view/widget/hosting_tab_view.dart';
import 'package:flutter/material.dart';

class HostVihcleViewBody extends StatelessWidget {
  const HostVihcleViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Vehicles',
            style: context.textTheme.titleMedium!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children:  [
              TabBar(
                  indicatorColor: AppColors.kPrimaryColor,
                  labelColor: AppColors.kPrimaryColor,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    Tab(
                      text: 'Vehicles',
                    ),
                    Tab(
                      text: 'Hosting',
                    ),
                    Tab(
                      text: 'Active Ride',
                    ),
                  ]),
              20.sH,
              SizedBox(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: TabBarView(
                  children: [
                    HostingTabView(),
                    HostingTabView(),
                    HostingTabView(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
