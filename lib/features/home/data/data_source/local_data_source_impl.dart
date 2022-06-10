import 'dart:convert';
import 'dart:developer';

import 'package:bexel_assesment/features/home/data/data_source/local_data_source.dart';
import 'package:bexel_assesment/features/home/data/models/input_form.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  @override
  Future<List<InputFormField>> readInputFormFromFieldsFromJson() async {
    final String inputJson =
        await rootBundle.loadString('assets/product_form_inputs.json');
    final List data = await json.decode(inputJson);
    log(data.toString());
    return data.map((e) => InputFormField.fromJson(e)).toList();
  }
}
