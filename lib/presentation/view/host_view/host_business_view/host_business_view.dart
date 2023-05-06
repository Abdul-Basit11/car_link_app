import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:flutter/material.dart';

import 'widget/earnigs.dart';
import 'widget/performance.dart';
import 'widget/review.dart';

class HostBusinessViewBody extends StatefulWidget {
  const HostBusinessViewBody({Key? key}) : super(key: key);

  @override
  State<HostBusinessViewBody> createState() => _HostBusinessViewBodyState();
}

class _HostBusinessViewBodyState extends State<HostBusinessViewBody> {
  int initialIndex=0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: initialIndex,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
         centerTitle: false,
          leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(Icons.arrow_back)),

          title: Text(
            'Business',
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                backgroundColor: Colors.red.shade100,
                fontSize: 24,
                fontWeight: FontWeight.bold),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            children: [
              const SizedBox(
                height: 20,
              ),
              TabBar(
                  onTap: (v){
                    initialIndex=v;
setState(() {

});
                  },
                indicatorColor: AppColors.kPrimaryColor,
                labelColor: AppColors.kPrimaryColor,
                dividerColor: Colors.transparent,
                // indicatorColor: AppColors.kPrimaryColor,
                // unselectedLabelStyle: Theme.of(context)
                //     .textTheme
                //     .labelLarge!
                //     .copyWith(backgroundColor: Colors.red.shade100),
                // labelStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                //     backgroundColor: Colors.red.shade100,
                //     color: AppColors.kPrimaryColor),
                // unselectedLabelColor: Colors.black,
                // labelColor: AppColors.kPrimaryColor,
                // dividerColor: Colors.transparent,
                tabs: [
                  Tab(

                    child: FittedBox(
                        child: Text(
                      'Earning',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          fontSize: 14,
                          color: initialIndex==0?AppColors.kPrimaryColor:Colors.black,
                          backgroundColor: Colors.red.shade100),
                    )),
                  ),
                  Tab(
                    child: FittedBox(
                        child: Text(
                      'Performance',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: initialIndex==1?AppColors.kPrimaryColor:Colors.black,

                          fontSize: 16, backgroundColor: Colors.red.shade100),
                    )),
                  ),
                  Tab(
                    child: FittedBox(
                        child: Text(
                      'Reviews',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: initialIndex==2?AppColors.kPrimaryColor:Colors.black,

                          fontSize: 14, backgroundColor: Colors.red.shade100),
                    )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Expanded(
                child: TabBarView(children: [
                  Earnings(),
                  Performance(),
                  Review(),
                ]),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
