class CarModel {
  final String carName;
  final String carImage;
  final String? carLogo;

  CarModel(this.carName, this.carImage, this.carLogo);
}

List<CarModel> carModelList = [
  CarModel('Mercedes CLS', 'asset/images/mercar.png', 'asset/images/mercedes.png'),
  CarModel('Ferrari', 'asset/images/feraricar.png', 'asset/images/ferrari.png'),
];
