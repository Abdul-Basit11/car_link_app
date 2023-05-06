import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';

class BottomSheetContainer extends StatefulWidget {
  const BottomSheetContainer({Key? key}) : super(key: key);

  @override
  State<BottomSheetContainer> createState() => _BottomSheetContainerState();
}

class _BottomSheetContainerState extends State<BottomSheetContainer> {
  bool isOn = false;
  bool isActive = false;
  double _value = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      //height: MediaQuery.of(context).size.height*0.70,
      width: double.infinity,
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(Icons.close)),
                Spacer(),
                Text(' Filter',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        backgroundColor: Colors.red.shade100, fontSize: 22)),
                Spacer(),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(' Delivery',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    backgroundColor: Colors.red.shade100, fontSize: 16)),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Get the Car directly to you',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(fontSize: 13),
                ),
                Switch(
                    activeTrackColor: AppColors.kBlackColor,
                    inactiveThumbColor: AppColors.kBlackColor,
                    activeColor: Color(0xffD0D0D0),
                    value: isOn,
                    onChanged: (v) {
                      setState(() {
                        isOn = v;
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(' Only Top-Rated Drivers',
                style: Theme.of(context).textTheme.labelLarge!.copyWith(
                    backgroundColor: Colors.red.shade100, fontSize: 16)),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Only Top-Rated Drivers',
                  style: Theme.of(context)
                      .textTheme
                      .labelMedium!
                      .copyWith(fontSize: 13),
                ),
                Switch(
                    activeTrackColor: AppColors.kBlackColor,
                    inactiveThumbColor: AppColors.kBlackColor,
                    activeColor: Color(0xffD0D0D0),
                    value: isActive,
                    onChanged: (v) {
                      setState(() {
                        isActive = v;
                      });
                    }),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(' Mileage Included',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(backgroundColor: Colors.red.shade100)),
            SizedBox(
              height: 20,
            ),
            Text(
              'Any Mileage',
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .copyWith(fontSize: 13),
            ),
            Slider(
              activeColor: AppColors.kBlackColor,
              secondaryActiveColor: AppColors.kBlackColor,
              thumbColor: AppColors.kBlackColor,
              min: 0.0,
              max: 100.0,
              value: _value,
              onChanged: (value) {
                setState(() {
                  _value = value;
                });
              },
            ),
            Text(' Featurses',
                style: Theme.of(context)
                    .textTheme
                    .labelLarge!
                    .copyWith(backgroundColor: Colors.red.shade100)),
            SizedBox(
              height: 15,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                buildContainer(),
                buildContainer(),
                buildContainer(),
                buildContainer(),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Center(
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: customBoxDecoration()!
                      .copyWith(borderRadius: BorderRadius.circular(10)),
                  child: Text(
                    'View 200+Result',
                    style: Theme.of(context)
                        .textTheme
                        .labelLarge!
                        .copyWith(color: AppColors.kWhiteColor),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }

  Container buildContainer() {
    return Container(
      height: 50,
      width: 50,
      decoration:
          BoxDecoration(border: Border.all(color: AppColors.kBlackColor)),
    );
  }
}
