import 'package:car_link_app/congiguration/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../navigation_helper/navigation_helper.dart';

import '../renter_car_detail_view/renter_car_detail_view.dart';
import '../renter_prefer_brand_car/widget/model.dart';
import 'widget/bottom_sheet_container.dart';
import 'widget/car_model.dart';

class RenterFindCarForYouViewBody extends StatelessWidget {
  const RenterFindCarForYouViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.location_pin,
              color: AppColors.kBlackColor,
            ),
            Text(
              'United State',
              style: Theme.of(context).textTheme.labelLarge,
            )
          ],
        ),
        backgroundColor: Colors.transparent,
        actions: [
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            height: 40,
            width: 40,
            decoration: const BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('asset/images/profileImage.png'))),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
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
                  const SizedBox(
                    height: 5,
                  ),
                  Text("Let's find a Car \nfor you",
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          height: 0)),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    cursorColor: AppColors.kPrimaryColor,
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall!
                        .copyWith(color: AppColors.kBlackColor),
                    decoration: InputDecoration(
                        border: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.kPrimaryColor)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: AppColors.kPrimaryColor, width: 2)),
                        hintText: 'Search for a car',
                        hintStyle: Theme.of(context).textTheme.labelLarge,
                        suffixIcon: IconButton(
                          onPressed: () {
                            showModalBottomSheet(
                                enableDrag: true,
                                isScrollControlled: true,
                                context: context,
                                builder: (context) {
                                  return const BottomSheetContainer();
                                });
                          },
                          icon: const Icon(
                            Icons.filter_alt_rounded,
                            color: Colors.grey,
                          ),
                        ),
                        prefixIcon: const Icon(
                          Icons.search_rounded,
                          color: Colors.grey,
                        )),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Trending Brands',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text('View all',
                          style: Theme.of(context).textTheme.labelMedium)
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Container(
                      width: double.infinity,
                      height: 75,
                      decoration: BoxDecoration(
                          color: AppColors.kGreyColor,
                          borderRadius: BorderRadius.circular(10)),
                      child: ListView.builder(
                        itemCount: carModel.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 10.0,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  height: 50,
                                  width: 50,
                                  decoration: BoxDecoration(
                                      color: AppColors.kWhiteColor,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Image.asset(carModel[index].imagePath),
                                ),
                                Text(
                                  carModel[index].carName,
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                )
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Luxuary Cars',
                        style: Theme.of(context)
                            .textTheme
                            .titleMedium!
                            .copyWith(
                                fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 6),
                          decoration: BoxDecoration(
                              color: AppColors.kBlackColor,
                              borderRadius: BorderRadius.circular(13)),
                          child: Text('more',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelMedium!
                                  .copyWith(
                                      color: AppColors.kWhiteColor,
                                      fontSize: 13)))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListView.builder(
                primary: false,
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: carModelList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      NavigationHelper.pushRoute(
                          context,
                          RenterCarDetailViewBody(
                            carModel: carModelList[index],
                            index: index,
                          ));
                    },
                    child: Container(
                      margin:
                          const EdgeInsets.only(right: 25, bottom: 10, top: 10),
                      width: double.infinity,
                      height: 150,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(30),
                            bottomRight: Radius.circular(30),
                          ),
                          color: Color(0xffD8D6D6)),
                      child: Row(
                        children: [
                          Image.asset(
                            carModelList[index].carImage,
                            height: 100,
                            width: 140,
                            fit: BoxFit.contain,
                          ),
                          const Spacer(),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                carModelList[index].carName,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium!
                                    .copyWith(
                                        color: const Color(0xff000A5C),
                                        fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    color: AppColors.kWhiteColor,
                                    size: 20,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'London',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Icon(
                                    Icons.star,
                                    color: Colors.amber.shade700,
                                    size: 20,
                                  ),
                                  Text(
                                    '4.5 (342 Reviews)',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelMedium!
                                        .copyWith(
                                            fontSize: 12,
                                            fontWeight: FontWeight.w800),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5, vertical: 5),
                                    decoration: customBoxDecoration(),
                                    child: Text(
                                      '1500\$/day',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelMedium!
                                          .copyWith(
                                              color: AppColors.kWhiteColor,
                                              fontSize: 13),
                                    ),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        image: DecorationImage(
                                            fit: BoxFit.cover,
                                            image: AssetImage(
                                                'asset/images/profileImage.png'))),
                                  ),
                                  Container(
                                    margin: const EdgeInsets.symmetric(
                                        horizontal: 15),
                                    height: 25,
                                    width: 25,
                                    decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: AppColors.kWhiteColor),
                                    child: const Center(
                                      child: Icon(
                                        Icons.favorite,
                                        color: Colors.red,
                                        size: 12,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
