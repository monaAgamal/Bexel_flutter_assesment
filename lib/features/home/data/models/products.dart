import 'package:realm/realm.dart'; // import realm package

part 'products.g.dart'; // declare a part file.

@RealmModel() // define a data model class named `_Car`.
class _Products {
  late String make;
  late String model;

  int? kilometers = 500;
}
