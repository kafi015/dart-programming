class Car
{
  late String brand;
  late String model;
  late int year;
  late double milesDriven;

  static int numberOfCars = 0; 

  Car(this.brand, this.model, this.year, this.milesDriven)
  {
    ++numberOfCars;
  }

  drive(double miles)
  {
    milesDriven += miles;
  }

  getMilesDriven(){
    return milesDriven;
  }

  getBrand(){
    return brand;
  }

  getModel(){
    return model;
  }

  getYear(){
    return year;
  }

  getAge()
  {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }

}


void main()
{
  Car car1 = Car('Toyota', 'Camry', 2015, 5000);
  Car car2 = Car('Honda', 'Civic', 2018, 3000);
  Car car3 = Car('Ford', 'Mustang', 2020, 2000);

  car1.drive(500);
  car2.drive(300);
  car3.drive(100);

  print('Car1 : \nBrand : ${car1.getBrand()} \nModel : ${car1.getModel()} \nYear : ${car1.getYear()}  \nMiles Driven : ${car1.getMilesDriven()}\n\n');
  print('Car2 : \nBrand : ${car2.getBrand()} \nModel : ${car2.getModel()} \nYear : ${car2.getYear()}  \nMiles Driven : ${car2.getMilesDriven()}\n\n');
  print('Car3 : \nBrand : ${car3.getBrand()} \nModel : ${car3.getModel()} \nYear : ${car3.getYear()}  \nMiles Driven : ${car3.getMilesDriven()}\n\n');

  print('Car 1 Age: ${car1.getAge()} years');
  print('Car 2 Age: ${car2.getAge()} years');
  print('Car 3 Age: ${car3.getAge()} years');

  print('\n\nTotal number of cars created: ${Car.numberOfCars}');
  
}