import 'package:bexel_assesment/core/domain/usecases/use_case.dart';
import 'package:bexel_assesment/features/home/domain/usecases/get_input_form_usecase.dart';
import 'package:bexel_assesment/features/home/presentation/cubit/products_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';
import 'dart:developer';

@injectable
class ProductsCubit extends Cubit<ProductsState> {
  final GetInputFormUseCase useCase;

  ProductsCubit(this.useCase) : super(const ProductsState.initial());

  Future getFor() async {
    final List<Widget> result = await useCase(NoParams());
    log("widgets .....$result");
    emit(ProductsState.loadUiForm(uIForm: result));
  }
}
