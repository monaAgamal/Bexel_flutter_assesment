import 'package:bexel_assesment/features/home/presentation/cubit/products_cubit.dart';
import 'package:bexel_assesment/features/home/presentation/cubit/products_state.dart';
import 'package:bexel_assesment/features/home/presentation/widgets/product_list_tem.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductsList extends StatefulWidget {
  const ProductsList({Key? key}) : super(key: key);

  @override
  State<ProductsList> createState() => _ProductsListState();
}

class _ProductsListState extends State<ProductsList> {
  @override
  initState() {
    super.initState();
    final bloc = BlocProvider.of<ProductsCubit>(context, listen: false);
    bloc.getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: ((context, state) => state.maybeWhen(
            orElse: () => const SizedBox(),
            loading: () => const Center(
              child: CircularProgressIndicator(),
            ),
            fetchProducts: (productsList) => ListView.builder(
              itemBuilder: (context, index) => ProductListItem(
                product: productsList[index],
              ),
            ),
          )),
    );
  }
}
