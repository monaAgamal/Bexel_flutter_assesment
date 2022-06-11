import 'dart:convert';
import 'dart:developer';
import 'package:bexel_assesment/features/home/data/data_source/local_data_source.dart';
import 'package:bexel_assesment/features/home/data/models/input_form.dart';
import 'package:bexel_assesment/features/home/data/models/products.dart';
import 'package:bexel_assesment/features/home/data/service/data_base_service.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: LocalDataSource)
class LocalDataSourceImpl implements LocalDataSource {
  final DatabaseService databaseService;

  LocalDataSourceImpl(this.databaseService);

  @override
  Future<List<InputFormField>> readInputFormFromFieldsFromJson() async {
    final String inputJson =
        await rootBundle.loadString('assets/product_form_inputs.json');
    final List data = await json.decode(inputJson);
    log(data.toString());
    return data.map((e) => InputFormField.fromJson(e)).toList();
  }

  @override
  Future createProduct({required Products product}) async {
    final result = databaseService.createProduct(product: product);
  }

  @override
  Future deleteProduct({required Products product}) async {
    final isDeleted = databaseService.deleteProduct(product: product);
  }

  @override
  Future fetchProductsList() async {
    final isDeleted = databaseService.fetchProductsList();
  }
}
