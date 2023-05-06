import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:car_link_app/presentation/element/custom_text_field.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../renter_find_dream_car/model/new_car_model.dart';

class RenterSearchCarResultViewBody extends StatelessWidget {
  const RenterSearchCarResultViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                20.sH,
                CustomTextField(
                  hintText: 'BMW M8 ',
                  prefixIcon: Icons.search_rounded,
                  isPrefixIcon: true,
                ),
                10.sH,
                Text(
                  'Your Search Result',
                  style: context.textTheme.labelMedium!
                      .copyWith(fontWeight: FontWeight.bold),
                ),
                ListView.builder(
                  itemCount: 3,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  primary: false,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        height: 233,
                        width: double.infinity,
                        child: Theme(
                          data: ThemeData(cardColor: Colors.transparent),
                          child: Card(
                            color: AppColors.kGreyColor,
                            elevation: 4,
                            child: Column(
                              children: [
                                ClipRRect(
                                    borderRadius: const BorderRadius.vertical(
                                        top: Radius.circular(10)),
                                    child: Image.asset(
                                      'asset/images/m8.jpg',
                                      width: double.infinity,
                                      height: 160,
                                      fit: BoxFit.cover,
                                    )),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            'BMW M8 2022',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelLarge,
                                          ),
                                          Text(
                                            'US\$79/day',
                                            style: Theme.of(context)
                                                .textTheme
                                                .labelMedium,
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Text('4.5'),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          for (int i = 0; i < 5; i++)
                                            Icon(
                                              Icons.star,
                                              size: 15,
                                              color: Colors.amber.shade600,
                                            )
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
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
