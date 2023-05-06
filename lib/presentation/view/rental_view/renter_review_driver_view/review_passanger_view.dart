import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../congiguration/app_colors.dart';
import '../../../element/custom_button.dart';

class RenterReviewDriverViewBody extends StatelessWidget {
  const RenterReviewDriverViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'asset/images/applogo.png',
                height: 12,
              ),
              const SizedBox(
                height: 5,
              ),
              Text('Review Your Driver',
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      backgroundColor: Colors.red.shade100,
                      fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: Column(
                  children: [
                    Container(
                      width: 95,
                      height: 100,
                      decoration: BoxDecoration(
                          color: const Color(0xffC5D0E6),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Orkhan Gasimov',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Azerbaijan, Baku',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RatingBar.builder(
                        itemSize: 28,
                        glow: false,
                        itemBuilder: (context, index) {
                          return Icon(
                            Icons.star_rate_outlined,
                            color: Colors.amber.shade600,
                          );
                        },
                        onRatingUpdate: (v) {}),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Write review (optional)',
                      style: Theme.of(context).textTheme.labelLarge,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    TextFormField(
                      cursorColor: AppColors.kPrimaryColor,
                      maxLines: 6,
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: AppColors.kBlackColor),
                      decoration: InputDecoration(
                        isDense: true,
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffC5D0E6), width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffC5D0E6), width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffC5D0E6), width: 2),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        hintText: 'Tell us about the service',
                        hintStyle: Theme.of(context)
                            .textTheme
                            .titleLarge!
                            .copyWith(
                                color: Colors.grey.shade600, fontSize: 13),
                      ),
                    ),
                    const SizedBox(
                      height: 60,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 50.0),
                      child: CustomButton(buttonText: 'Send', onTapped: () {
                        Navigator.pop(context);


                      }),
                    ),
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
