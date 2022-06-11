import 'dart:developer';

import 'package:bexel_assesment/features/home/presentation/cubit/products_cubit.dart';
import 'package:bexel_assesment/features/home/presentation/cubit/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateProductForm extends StatefulWidget {
  const CreateProductForm({super.key});

  @override
  State<CreateProductForm> createState() => _CreateProductFormState();
}

class _CreateProductFormState extends State<CreateProductForm>
    with KeepAliveParentDataMixin {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        log("current state is ${state.toString()}");
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(
            child: Text(
              "ccccccccccccc",
              style: TextStyle(color: Colors.red),
            ),
          ),
          loadUiForm: (parsedWidgets) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Expanded(flex: 1, child: SizedBox()),
                  ...parsedWidgets
                      .map(
                        (e) => Container(
                          // color: Colors.red,
                          padding: const EdgeInsets.only(bottom: 8),
                          child: e,
                        ),
                      )
                      .toList(),
                  const Expanded(flex: 1, child: SizedBox()),
                  Container(
                    width: double.infinity,
                    height: 52,
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Add Product",
                      style: Theme.of(context).textTheme.bodyText2!.copyWith(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  const Expanded(flex: 2, child: SizedBox()),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  void detach() {}

  @override
  // TODO: implement keptAlive
  bool get keptAlive => true;
}
