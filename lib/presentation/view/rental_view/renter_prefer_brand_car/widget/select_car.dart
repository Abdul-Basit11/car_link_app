import 'package:flutter/material.dart';

import '../../../../../congiguration/app_colors.dart';


class SelectCar extends StatefulWidget {


  @override
  State<SelectCar> createState() => _SelectCarState();
  final String image;
  final String carName;

  SelectCar({ required this.image, required this.carName});
}

class _SelectCarState extends State<SelectCar> {

  bool isSelected=false;
  @override
  Widget build(BuildContext context) {
    return isSelected?Expanded(
      child: GestureDetector(
        onTap: (){
          setState(() {
            isSelected=!isSelected;
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          height: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.kGreyColor,
              border: Border.all(
                  color:
                  AppColors.kPrimaryColor
                  ,width: 2)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
                height: 60,
                width: 80,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.carName,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    ):Expanded(
      child: GestureDetector(
        onTap: (){
          setState(() {
            isSelected=!isSelected;
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 10),

          height: 140,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: AppColors.kGreyColor,
              border: Border.all(
                  color:
                  AppColors.kGreyColor,
                  width: 2)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                widget.image,
                height: 60,
                width: 80,
                fit: BoxFit.contain,
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                widget.carName,
                style: Theme.of(context).textTheme.labelLarge!.copyWith(fontSize: 15),
              )
            ],
          ),
        ),
      ),
    );
  }
}
