import 'package:bexel_assesment/features/home/domain/entities/input_form_field.dart';
import 'package:bexel_assesment/features/home/domain/repository/products_repository.dart';
import 'package:bexel_assesment/features/home/presentation/input_field_to_widget_factory/input_field_to_widget_factory.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import '../../../../core/domain/usecases/use_case.dart';

@injectable
class GetInputFormUseCase extends UseCase<Future<List<Widget>>, NoParams> {
  final ProductsRepository productsRepository;
  final InputFieldToWidgetFactory inputFieldToWidgetFactoryConverter;

  GetInputFormUseCase({
    required this.productsRepository,
    required this.inputFieldToWidgetFactoryConverter,
  });

  @override
  Future<List<Widget>> call(NoParams params) async {
    final res = await productsRepository.readInputFormFromFieldsFromJson();
    return res
        .map((e) => inputFieldToWidgetFactoryConverter.inputToWidget(e))
        .toList();
  }
}
