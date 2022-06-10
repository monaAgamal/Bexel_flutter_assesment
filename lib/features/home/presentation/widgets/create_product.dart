import 'package:bexel_assesment/features/home/presentation/cubit/products_cubit.dart';
import 'package:bexel_assesment/features/home/presentation/cubit/products_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateProductForm extends StatelessWidget {
  const CreateProductForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(

      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const SizedBox.shrink(),
          loadUiForm: (parsedWidgets) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: parsedWidgets,
            ),
          ),
        );
      },
    );
  }
}
