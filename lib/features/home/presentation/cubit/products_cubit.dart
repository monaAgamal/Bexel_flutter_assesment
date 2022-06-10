import 'package:bexel_assesment/core/domain/usecases/use_case.dart';
import 'package:bexel_assesment/features/home/domain/entities/product.dart';
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

  Future getProducts() async {
    emit(const ProductsState.loading());
    Future.delayed(const Duration(seconds: 2));
    final List<Product> products = [
      const Product(name: "Product-0", details: "details-0", imagePath: "//"),
      const Product(name: "Product-1", details: "details-1", imagePath: "//"),
      const Product(name: "Product-3", details: "details-3", imagePath: "//"),
      const Product(name: "Product-4", details: "details-4", imagePath: "//"),
      const Product(name: "Product-5", details: "details-5", imagePath: "//"),
      const Product(name: "Product-6", details: "details-6", imagePath: "//"),
      const Product(name: "Product-7", details: "details-7", imagePath: "//"),
      const Product(name: "Product-8", details: "details-8", imagePath: "//"),
    ];
    emit(ProductsState.fetchProducts(products: products));
  }
}
