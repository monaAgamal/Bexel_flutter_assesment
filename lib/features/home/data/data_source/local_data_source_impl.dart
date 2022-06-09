import 'dart:convert';

import 'package:bexel_assesment/features/home/data/data_source/local_data_source.dart';
import 'package:bexel_assesment/features/home/data/models/input_form.dart';
import 'package:flutter/services.dart';

class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<List<InputFormField>> readInputFormFromFieldsFromJson() async {
    final String inputJson = await rootBundle
        .loadString('input_form_fields/product_form_inputs.json');
    final List<InputFormField> data = await json.decode(inputJson);

    return data;
  }
}
