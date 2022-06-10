import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'products_state.freezed.dart';

@freezed
abstract class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = Initial;

  const factory ProductsState.loadUiForm({required List<Widget> uIForm}) =
      LoadUiForm;
}
