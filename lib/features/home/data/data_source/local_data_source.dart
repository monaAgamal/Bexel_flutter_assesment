import 'package:bexel_assesment/features/home/data/models/input_form.dart';
import 'package:bexel_assesment/features/home/data/models/products.dart';

abstract class LocalDataSource {
  Future<List<InputFormField>> readInputFormFromFieldsFromJson();

  Future createProduct({required Products product});

  Future fetchProductsList();

  Future deleteProduct({required Products product});
}
