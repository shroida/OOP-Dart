class Car {
  // Private field (accessible only within this library/file)
  String? _id;
  String? name;
  String? model;
  int? year;
  double? price;
  String? color;
  int? mileage;
  bool? isElectric;
  DateTime? lastServiceDate;
  List<String>? features;

  // Constructor with named parameters
  Car({
    this.name,
    this.model,
    this.year,
    this.price,
    this.color,
    this.mileage,
    this.isElectric = false,
    this.lastServiceDate,
    this.features,
  });

  set generateId(String value) {
    _id = 'CAR-$value-${DateTime.now().millisecondsSinceEpoch % 1000}';
  }

  // Public methods
  void printCarData() {
    print('Car Details:');
    print('ID: $_id');
    print('Name: $name');
    print('Model: $model');
    print('Year: $year');
    print('Price: \$${price?.toStringAsFixed(2)}');
    print('Color: $color');
    print('Mileage: ${mileage ?? 0} miles');
    print('Type: ${isElectric == true ? "Electric" : "Gasoline"}');
    print('Last Service: ${lastServiceDate?.toIso8601String() ?? "Never"}');
    print('Features: ${features?.join(", ") ?? "None"}');
  }
}
