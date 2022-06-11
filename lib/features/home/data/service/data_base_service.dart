import 'package:bexel_assesment/features/home/data/models/products.dart';

abstract class DatabaseService {
  Future createProduct({required Products product});

  Future<List<Products>> fetchProductsList();

  Future deleteProduct({required Products product});
}
