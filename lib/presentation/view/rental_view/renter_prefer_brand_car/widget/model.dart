class CarData {
  final String imagePath;
  final String carName;

  CarData(this.imagePath, this.carName);
}

List<CarData> carModel = [
  CarData('asset/images/tesla.png', 'Tesla'),
  CarData('asset/images/mercedes.png', 'Mercedes'),
  CarData('asset/images/ferrari.png', 'Ferrari'),
  CarData('asset/images/bugati.png', 'Bugatti'),
  CarData('asset/images/bmw.png', 'BMW'),
  CarData('asset/images/lamborghini.png', 'Lamborghini'),
];
