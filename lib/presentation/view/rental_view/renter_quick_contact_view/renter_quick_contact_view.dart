import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:car_link_app/presentation/view/rental_view/renter_bottom_navigation_bar_view/renter_bottom_navugation_bar_view.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';

class RenterQuickContactViewBody extends StatelessWidget {
  const RenterQuickContactViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
          // leading: InkWell(
          //   onTap: () {
          //     Navigator.pop(context);
          //   },
          //   child: const Icon(Icons.arrow_back),
          // ),
          ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.40,
              width: double.infinity,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('asset/images/map.png'))),
            ),
            Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Center(
                      child: Text(
                    'Quick Contact',
                    style: Theme.of(context)
                        .textTheme
                        .titleMedium!
                        .copyWith(fontSize: 24),
                  )),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Name',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 15,
                              spreadRadius: 1),
                        ]),
                    child: TextFormField(
                      cursorColor: AppColors.kPrimaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter full name here ',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(
                                color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Email',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 15,
                              spreadRadius: 1),
                        ]),
                    child: TextFormField(
                      cursorColor: AppColors.kPrimaryColor,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'Enter your email',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(
                                color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Message',
                    style: Theme.of(context).textTheme.labelLarge,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        color: AppColors.kWhiteColor,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.8),
                              blurRadius: 15,
                              spreadRadius: 1),
                        ]),
                    child: TextFormField(
                      cursorColor: AppColors.kPrimaryColor,
                      maxLines: 6,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: 'max 120 character',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(
                                color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black, width: 2)),
                        height: 46,
                        child: Text(
                          'Choose File',
                          style: Theme.of(context)
                              .textTheme
                              .labelMedium!
                              .copyWith(fontWeight: FontWeight.w600),
                        ),
                      ),
                      const Spacer(),
                      Expanded(
                          flex: 4,
                          child: CustomButton(
                              buttonText: 'Send',
                              onTapped: () {
                                Navigator.of(context)
                                  ..pop()
                                  ..pop();
                              }))
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
