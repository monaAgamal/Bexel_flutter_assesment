import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart'; // import realm package
part 'products.g.dart'; // declare a part file.

@RealmModel() // define a data model class named `_Car`.
class _Products {
  late String name;
  late String details;
  late String imagePath;
}
