import 'package:flutter/material.dart';

class NewCarModel {
  final String carImagePath;
  final String carName;
  final String rating;

  NewCarModel(this.carImagePath, this.carName, this.rating);
}

List<NewCarModel> newCArModel = [
  NewCarModel('asset/images/m8.jpg', 'BMW M8 2022', "4.0"),
  NewCarModel('asset/images/m3.jpg', 'BMW M3 2023', "4.0"),
];
