import 'package:bexel_assesment/features/home/data/data_source/local_data_source.dart';
import 'package:bexel_assesment/features/home/data/models/input_form.dart';
import 'package:bexel_assesment/features/home/domain/entities/input_form_field.dart';
import 'package:bexel_assesment/features/home/domain/mappers/input_form_model_to_entity_mapper.dart';
import 'package:bexel_assesment/features/home/domain/repository/products_repository.dart';
import 'package:injectable/injectable.dart';

@Singleton(as:ProductsRepository)
class ProductsRepositoryImpl implements ProductsRepository {
  final LocalDataSource localDataSource;

  ProductsRepositoryImpl({
    required this.localDataSource,
  });

  @override
  Future<List<InputFormFieldEntity>> readInputFormFromFieldsFromJson() async {
    final List<InputFormField> result =
        await localDataSource.readInputFormFromFieldsFromJson();
    return result.map((e) => e.toDomain()).toList();
  }
}
