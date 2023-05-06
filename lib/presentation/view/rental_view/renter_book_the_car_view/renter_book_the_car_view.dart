import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../renter_find_car_for_you_view/widget/car_model.dart';
import '../renter_review_driver_view/review_passanger_view.dart';

class RenterBookTheCarViewBody extends StatelessWidget {
  final CarModel carModel;
  final int index;

  const RenterBookTheCarViewBody(
      {super.key, required this.carModel, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Book the car',
          style: Theme.of(context)
              .textTheme
              .titleMedium!
              .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        actions: [
          GestureDetector(
            onTap: () {
              showModalBottomSheet(
                  elevation: 0,
                  barrierColor: Colors.transparent,
                  backgroundColor: Colors.transparent,
                  isScrollControlled: true,
                  useSafeArea: true,
                  context: context,
                  builder: (ctx) {
                    return Container(
                      padding: const EdgeInsets.all(20),
                      margin: const EdgeInsets.all(20),
                      decoration: BoxDecoration(
                          color: AppColors.kWhiteColor,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.8),
                                blurRadius: 15,
                                spreadRadius: 1),
                          ]),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      carModel.carName,
                                      style: Theme.of(context)
                                          .textTheme
                                          .titleMedium,
                                    ),
                                    Text(
                                      'AUD2679',
                                      style: Theme.of(context)
                                          .textTheme
                                          .labelLarge!
                                          .copyWith(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                const Spacer(),
                                Container(
                                  height: 2,
                                  width: 30,
                                  color: Colors.grey,
                                ),
                                const Spacer(),
                                Row(
                                  children: [
                                    Container(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 6),
                                        decoration: BoxDecoration(
                                            color: AppColors.kBlackColor,
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        child: const Icon(
                                          Icons.more_horiz,
                                          color: AppColors.kWhiteColor,
                                        )),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    const Icon(
                                      Icons.phone,
                                    ),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Location',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  '5 min away',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: AppColors.kWhiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.8),
                                        blurRadius: 15,
                                        spreadRadius: 1),
                                  ]),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    Icons.location_pin,
                                    color: AppColors.kBlackColor,
                                  ),
                                  Expanded(
                                    child: Text(
                                      'St.Paraguay Beach,South Carolina',
                                      maxLines: 1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            color: Colors.grey,
                                          ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Text(
                              'Payment',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Container(
                              padding: const EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: AppColors.kWhiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.8),
                                        blurRadius: 15,
                                        spreadRadius: 1),
                                  ]),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('Visa',
                                      maxLines: 1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge),
                                  Text('       ***    ***    ***',
                                      maxLines: 1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                  Text('6750',
                                      maxLines: 1,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.bold)),
                                  const Spacer(),
                                  Stack(
                                    children: [
                                      Container(
                                        height: 20,
                                        width: 20,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.red),
                                      ),
                                      Container(
                                        margin: const EdgeInsets.only(left: 12),
                                        height: 20,
                                        width: 20,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.orange),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              padding: const EdgeInsets.all(10),
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.kWhiteColor,
                                  borderRadius: BorderRadius.circular(15),
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.grey.withOpacity(0.8),
                                        blurRadius: 15,
                                        spreadRadius: 1),
                                  ]),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Total Amount to Pay',
                                    style: Theme.of(context)
                                        .textTheme
                                        .labelLarge!
                                        .copyWith(
                                            fontSize: 19,
                                            fontWeight: FontWeight.w500),
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'Inclusive of all Taxes*',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(color: Colors.grey),
                                      ),
                                      Text(
                                        '\$1535.00',
                                        style: Theme.of(context)
                                            .textTheme
                                            .labelLarge!
                                            .copyWith(
                                                fontSize: 19,
                                                fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomButton(
                                buttonText: 'Pay Now',
                                onTapped: () {
                                  showDialog(
                                      context: context,
                                      builder: (context) {
                                        return Dialog(
                                          child: Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Container(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            20),
                                                    decoration: BoxDecoration(
                                                        border: Border.all(
                                                          color: Colors.green,
                                                        ),
                                                        shape: BoxShape.circle),
                                                    child: const Icon(
                                                      Icons.done,
                                                      size: 30,
                                                      color: Colors.green,
                                                    )),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Text(
                                                    'Your Car Booked Successfully',
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .labelMedium!
                                                        .copyWith(
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold)),
                                                const SizedBox(
                                                  height: 20,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets
                                                          .symmetric(
                                                      horizontal: 40.0),
                                                  child: CustomButton(
                                                      buttonText: 'Done',
                                                      onTapped: () {
                                                        Navigator.of(ctx)
                                                          ..pop()
                                                          ..pop()
                                                          ..pushReplacement(
                                                              MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          RenterReviewDriverViewBody()));
                                                      }),
                                                ),
                                                const SizedBox(
                                                  height: 15,
                                                ),
                                              ],
                                            ),
                                          ),
                                        );
                                      });
                                }),
                          ],
                        ),
                      ),
                    );
                  });
            },
            child: Container(
                alignment: Alignment.center,
                margin: const EdgeInsets.symmetric(horizontal: 20),
                height: 40,
                width: 40,
                //padding: const EdgeInsets.symmetric(horizontal: 6),
                decoration: BoxDecoration(
                    color: AppColors.kBlackColor,
                    borderRadius: BorderRadius.circular(10)),
                child: const Icon(
                  Icons.location_pin,
                  color: AppColors.kWhiteColor,
                )),
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.cover, image: AssetImage('asset/images/map.png'))),
      ),
    );
  }
  //
  // Widget mapDialogBox(BuildContext context) {
  //   return Container(
  //     padding: const EdgeInsets.all(20),
  //     margin: const EdgeInsets.all(20),
  //     decoration: BoxDecoration(
  //         color: AppColors.kWhiteColor,
  //         borderRadius: BorderRadius.circular(15),
  //         boxShadow: [
  //           BoxShadow(
  //               color: Colors.grey.withOpacity(0.8),
  //               blurRadius: 15,
  //               spreadRadius: 1),
  //         ]),
  //     child: Column(
  //       mainAxisSize: MainAxisSize.min,
  //       children: [
  //         Row(
  //           crossAxisAlignment: CrossAxisAlignment.start,
  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  //           children: [
  //             Column(
  //               mainAxisAlignment: MainAxisAlignment.start,
  //               crossAxisAlignment: CrossAxisAlignment.start,
  //               children: [
  //                 Text(
  //                   'Ferrari',
  //                   style: Theme.of(context).textTheme.titleMedium,
  //                 ),
  //                 Text(
  //                   'AUD2679',
  //                   style: Theme.of(context)
  //                       .textTheme
  //                       .labelLarge!
  //                       .copyWith(color: Colors.grey),
  //                 ),
  //               ],
  //             ),
  //             const Spacer(),
  //             Container(
  //               height: 2,
  //               width: 30,
  //               color: Colors.grey,
  //             ),
  //             const Spacer(),
  //             Row(
  //               children: [
  //                 Container(
  //                     padding: const EdgeInsets.symmetric(horizontal: 6),
  //                     decoration: BoxDecoration(
  //                         color: AppColors.kBlackColor,
  //                         borderRadius: BorderRadius.circular(10)),
  //                     child: const Icon(
  //                       Icons.more_horiz,
  //                       color: AppColors.kWhiteColor,
  //                     )),
  //                 const SizedBox(
  //                   width: 5,
  //                 ),
  //                 const Icon(
  //                   Icons.phone,
  //                 ),
  //               ],
  //             )
  //           ],
  //         ),
  //         const SizedBox(
  //           height: 20,
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //           children: [
  //             Text(
  //               'Location',
  //               style: Theme.of(context).textTheme.labelMedium,
  //             ),
  //             Text(
  //               '5 min away',
  //               style: Theme.of(context)
  //                   .textTheme
  //                   .labelMedium!
  //                   .copyWith(color: Colors.grey),
  //             )
  //           ],
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Container(
  //           padding: const EdgeInsets.all(8),
  //           decoration: BoxDecoration(
  //               color: AppColors.kWhiteColor,
  //               borderRadius: BorderRadius.circular(15),
  //               boxShadow: [
  //                 BoxShadow(
  //                     color: Colors.grey.withOpacity(0.8),
  //                     blurRadius: 15,
  //                     spreadRadius: 1),
  //               ]),
  //           child: Row(
  //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //             children: [
  //               const Icon(
  //                 Icons.location_pin,
  //                 color: AppColors.kBlackColor,
  //                 size: 22,
  //               ),
  //               SizedBox(
  //                 width: 10,
  //               ),
  //               Expanded(
  //                 child: Text(
  //                   'St.Paraguay Beach,South Carolina',
  //                   maxLines: 1,
  //                   style: Theme.of(context).textTheme.bodyLarge!.copyWith(
  //                         color: Colors.grey,
  //                       ),
  //                 ),
  //               ),
  //             ],
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 20,
  //         ),
  //         Text(
  //           'Payment',
  //           style: Theme.of(context).textTheme.labelMedium,
  //         ),
  //         const SizedBox(
  //           height: 10,
  //         ),
  //         Container(
  //           padding: const EdgeInsets.all(8),
  //           decoration: BoxDecoration(
  //               color: AppColors.kWhiteColor,
  //               borderRadius: BorderRadius.circular(15),
  //               boxShadow: [
  //                 BoxShadow(
  //                     color: Colors.grey.withOpacity(0.8),
  //                     blurRadius: 15,
  //                     spreadRadius: 1),
  //               ]),
  //           child: Row(
  //             crossAxisAlignment: CrossAxisAlignment.center,
  //             children: [
  //               Text('Visa',
  //                   maxLines: 1, style: Theme.of(context).textTheme.bodyLarge),
  //               Text('       ***    ***    ***',
  //                   maxLines: 1,
  //                   style: Theme.of(context)
  //                       .textTheme
  //                       .bodyLarge!
  //                       .copyWith(fontWeight: FontWeight.bold)),
  //               Text('6750',
  //                   maxLines: 1,
  //                   style: Theme.of(context)
  //                       .textTheme
  //                       .bodyLarge!
  //                       .copyWith(fontWeight: FontWeight.bold)),
  //               const Spacer(),
  //               Stack(
  //                 children: [
  //                   Container(
  //                     height: 20,
  //                     width: 20,
  //                     decoration: const BoxDecoration(
  //                         shape: BoxShape.circle, color: Colors.red),
  //                   ),
  //                   Container(
  //                     margin: const EdgeInsets.only(left: 12),
  //                     height: 20,
  //                     width: 20,
  //                     decoration: const BoxDecoration(
  //                         shape: BoxShape.circle, color: Colors.orange),
  //                   ),
  //                 ],
  //               )
  //             ],
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 20,
  //         ),
  //         Container(
  //           padding: const EdgeInsets.all(10),
  //           width: double.infinity,
  //           decoration: BoxDecoration(
  //               color: AppColors.kWhiteColor,
  //               borderRadius: BorderRadius.circular(15),
  //               boxShadow: [
  //                 BoxShadow(
  //                     color: Colors.grey.withOpacity(0.8),
  //                     blurRadius: 15,
  //                     spreadRadius: 1),
  //               ]),
  //           child: Column(
  //             crossAxisAlignment: CrossAxisAlignment.start,
  //             children: [
  //               Text(
  //                 'Total Amount to Pay',
  //                 style: Theme.of(context).textTheme.titleLarge,
  //               ),
  //               const SizedBox(
  //                 height: 10,
  //               ),
  //               Row(
  //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //                 children: [
  //                   Text(
  //                     'Inclusive of all Taxes*',
  //                     style: Theme.of(context)
  //                         .textTheme
  //                         .labelLarge!
  //                         .copyWith(color: Colors.grey),
  //                   ),
  //                   Text(
  //                     '\$1535.00',
  //                     style: Theme.of(context).textTheme.labelMedium,
  //                   ),
  //                 ],
  //               )
  //             ],
  //           ),
  //         ),
  //         const SizedBox(
  //           height: 20,
  //         ),
  //         CustomButton(
  //             buttonText: 'Pay Now',
  //             onTapped: () {
  //               //Navigator.pop(ctx);
  //
  //
  //               //NavigationHelper.pushRoute(context, RenterReviewDriverViewBody());
  //             }),
  //       ],
  //     ),
  //   );
  // }
}
