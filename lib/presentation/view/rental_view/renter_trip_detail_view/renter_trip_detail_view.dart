import 'package:car_link_app/congiguration/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../congiguration/app_colors.dart';
import '../../../element/custom_button.dart';
import '../../../element/custom_text_field.dart';

class RenterTripDetailViewBody extends StatefulWidget {
  const RenterTripDetailViewBody({Key? key}) : super(key: key);

  @override
  State<RenterTripDetailViewBody> createState() =>
      _RenterTripDetailViewBodyState();
}

class _RenterTripDetailViewBodyState extends State<RenterTripDetailViewBody> {
  String _dateOfReturn = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            30.sH,
            Text(
              "Enter Trip Details",
              style: context.textTheme.titleMedium!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            10.sH,
            Text(
              'Please Provide Trip Details',
              style: context.textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey.shade500),
            ),
            40.sH,
            Text(
              'Trip Destination',
              style: context.textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey.shade500),
            ),
            5.sH,
            CustomTextField(
              hintText: 'Enter Address',
              textInputType: TextInputType.number,
            ),
            15.sH,
            Text(
              'Date of Return',
              style: context.textTheme.labelLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                  color: Colors.grey.shade500),
            ),
            5.sH,
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.kGreyColor,
              ),
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      _dateOfReturn,
                      style: context.textTheme.titleMedium!.copyWith(
                          color: AppColors.kBlackColor,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        splashRadius: 20,
                        onPressed: () {
                          showDatePicker(
                            builder: (context, child) {
                              return Theme(
                                data: Theme.of(context).copyWith(
                                  colorScheme: ColorScheme.light(
                                    primary:
                                        AppColors.kPrimaryColor, // <-- SEE HERE
                                  ),
                                  textButtonTheme: TextButtonThemeData(
                                    style: TextButton.styleFrom(
                                      primary: Colors.red, // button text color
                                    ),
                                  ),
                                ),
                                child: child!,
                              );
                            },
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2050),
                          ).then((value) {
                            _dateOfReturn =
                                DateFormat("dd-MM-yyyy").format(value!);
                            setState(() {});
                          });
                        },
                        icon: const Icon(
                          Icons.calendar_today,
                          size: 20,
                        ))
                  ],
                ),
              ),
            ),
            120.sH,
            CustomButton(buttonText: 'Send Request', onTapped: () {}),
          ],
        ),
      ),
    );
  }
}
