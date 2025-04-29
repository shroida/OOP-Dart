import 'clsCar.dart';

void main() {
  // Create a regular car
  final myCar = Car(
    name: 'Toyota',
    model: 'Camry',
    year: 2020,
    price: 25000,
    color: 'Blue',
    mileage: 15000,
  );
  myCar.wheel = 2;
  myCar.printCarData();
}
