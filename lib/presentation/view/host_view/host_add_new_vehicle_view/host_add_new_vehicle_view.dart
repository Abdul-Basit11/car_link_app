import 'package:car_link_app/navigation_helper/navigation_helper.dart';
import 'package:car_link_app/presentation/element/custom_button.dart';
import 'package:car_link_app/presentation/element/custom_text_field.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../congiguration/app_colors.dart';
import '../host_bottom_navigation_bar_view/host_bottom_navigation_bar_view.dart';

class HostAddNewVehicleViewBody extends StatefulWidget {
  const HostAddNewVehicleViewBody({Key? key}) : super(key: key);

  @override
  State<HostAddNewVehicleViewBody> createState() =>
      _HostAddNewVehicleViewBodyState();
}

class _HostAddNewVehicleViewBodyState extends State<HostAddNewVehicleViewBody> {
  final List carList = [
    'Mercedes Benz',
    'Ferrari',
    'Bugatti',
  ];
  String selectedCar = 'Mercedes Benz';

  final List modelList = [
    'SLS AMG',
    'Brabus',
    'E63',
  ];
  String selectedModel = 'SLS AMG';

  final List yearList = [
    '2018',
    '2020',
    '2021',
  ];
  String selectedYear = '2018';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20),
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
                      "Add a new Vehicle",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    DottedBorder(
                      dashPattern: const [50, 45],
                      borderType: BorderType.RRect,
                      color: Colors.grey,
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        width: double.infinity,
                        height: 150,
                        child: Image.asset('asset/images/uploaded.png'),
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Spacer(),
                        Expanded(
                            flex: 2,
                            child: CustomButton(
                                buttonText: "Upload", onTapped: () {})),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Brand',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.grey),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      isDense: true,
                      value: selectedCar,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.kBlackColor,
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 16),
                      underline: Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.kPrimaryColor,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          selectedCar = value!;
                        });
                      },
                      items: carList.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Model',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.grey),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      isDense: true,
                      value: selectedModel,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.kBlackColor,
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 16),
                      underline: Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.kPrimaryColor,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          selectedModel = value!;
                        });
                      },
                      items: modelList.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      'Years Of Issues',
                      style: Theme.of(context)
                          .textTheme
                          .labelLarge!
                          .copyWith(color: Colors.grey),
                    ),
                    DropdownButton<String>(
                      isExpanded: true,
                      isDense: true,
                      value: selectedYear,
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: AppColors.kBlackColor,
                      ),
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(fontSize: 16),
                      underline: Container(
                        height: 1,
                        width: double.infinity,
                        color: AppColors.kPrimaryColor,
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          selectedYear = value!;
                        });
                      },
                      items: yearList.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      cursorColor: AppColors.kPrimaryColor,
                      decoration: InputDecoration(
                        isDense: true,
                        labelText: 'Price of Car',
                        border: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.kPrimaryColor)),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.kPrimaryColor)),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: AppColors.kPrimaryColor)),
                        labelStyle: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Colors.grey),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Upload Insurance Proof',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .copyWith(color: Colors.grey),
                        ),
                        InkWell(
                          onTap: () {


                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 8, vertical: 4),
                            decoration: BoxDecoration(
                                color: AppColors.kGreyColor,
                                border: Border.all(color: Colors.grey),
                                borderRadius: BorderRadius.circular(8)),
                            child: Text(
                              'Select File',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .copyWith(color: Colors.grey, fontSize: 13),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const Divider(
                      color: AppColors.kPrimaryColor,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.all(18),
            width: double.infinity,
            decoration: BoxDecoration(color: AppColors.kWhiteColor, boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.8),
                  blurRadius: 5,
                  spreadRadius: 1),
            ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: CustomButton(
                  buttonText: 'Save Car',
                  onTapped: () {
                    // Navigator.of(context)
                    //   ..pop()
                    //   ..pushReplacement(MaterialPageRoute(
                    //       builder: (context) =>
                    //           HostBottomNavigationBarViewBody()));
                    Navigator.pop(context);
                    // NavigationHelper.pushRoute(
                    //     context,
                    //     HostBottomNavigationBarViewBody(
                    //       hostcurrentIndex: 0,
                    //     ));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
