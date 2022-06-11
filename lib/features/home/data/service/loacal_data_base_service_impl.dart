import 'package:bexel_assesment/features/home/data/models/products.dart';
import 'package:bexel_assesment/features/home/data/service/data_base_service.dart';
import 'package:injectable/injectable.dart';
import 'package:realm/realm.dart';

@LazySingleton(as: DatabaseService)
class LocalDataBaseServiceImpl implements DatabaseService {
  late Realm realm;

  late Configuration config;

  LocalDataBaseServiceImpl() {
    config = Configuration([Products.schema]);
    realm = Realm(config);
  }

  @override
  Future createProduct({required Products product}) async {
    var writableProduct =
        Products(product.name, product.details, product.imagePath);
    realm.write(() {
      realm.add(writableProduct);
    });
  }

  @override
  Future deleteProduct({required Products product}) async {
    realm.delete(product);
  }

  @override
  Future<List<Products>> fetchProductsList() async {
    final products = realm.all<Products>();
    return products
        .map(
          (item) => Products(item.name, item.details, item.imagePath),
        )
        .toList();
  }
}
