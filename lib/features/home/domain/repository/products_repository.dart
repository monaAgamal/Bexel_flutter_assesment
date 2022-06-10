import 'package:bexel_assesment/features/home/domain/entities/input_form_field.dart';

abstract class ProductsRepository {
  Future<List<InputFormFieldEntity>> readInputFormFromFieldsFromJson();
}
