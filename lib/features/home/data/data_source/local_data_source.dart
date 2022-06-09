import 'package:bexel_assesment/features/home/data/models/input_form.dart';

abstract class LocalDataSource {
  Future<List<InputFormField>> readInputFormFromFieldsFromJson();
}
