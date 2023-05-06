import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:flutter/material.dart';

class HostMyTripsViewBody extends StatelessWidget {
  const HostMyTripsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Image.asset(
                  'asset/images/applogo.png',
                  height: 12,
                ),
                Text(
                  "My Trips",
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                    fontSize: 24,fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const TabBar(
                  indicatorColor: AppColors.kPrimaryColor,
                  labelColor: AppColors.kPrimaryColor,
                  unselectedLabelColor: Colors.grey,
                  dividerColor: Colors.transparent,
                  tabs: [
                    Tab(
                      text: 'Upcoming',
                    ),
                    Tab(
                      text: 'Completed',
                    ),
                    Tab(
                      text: 'Cancelled',
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today 10:30 am',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Center(
                        widthFactor: double.infinity,
                        child: Image.asset(
                          'asset/images/upcoming.png',
                          fit: BoxFit.cover,
                          height: 150,
                          width: double.infinity,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'BMW M250 Coupe',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Price',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: Colors.grey,fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CGS-2569',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Text(
                            '\$235.00',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: AppColors.kPrimaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Today 10:30 am',
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                      Center(
                        child: Image.asset(
                          'asset/images/upcoming.png',
                          fit: BoxFit.cover,
                          height: 150,
                          width: 300,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'BMW M250 Coupe',
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                          Text(
                            'Price',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: Colors.grey,fontSize: 16),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'CGS-2569',
                            style: Theme.of(context).textTheme.labelLarge,
                          ),
                          Text(
                            '\$235.00',
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge!
                                .copyWith(color: AppColors.kPrimaryColor),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
