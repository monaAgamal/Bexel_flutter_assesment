import 'package:bexel_assesment/di/injection_container.dart';
import 'package:bexel_assesment/features/home/presentation/cubit/products_cubit.dart';
import 'package:bexel_assesment/features/home/presentation/widgets/create_product.dart';
import 'package:bexel_assesment/features/home/presentation/widgets/products_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'dart:developer';

class BottomNavBarHomePage extends StatefulWidget {
  const BottomNavBarHomePage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarHomePage> createState() => _BottomNavBarHomePageState();
}

class _BottomNavBarHomePageState extends State<BottomNavBarHomePage> {
  final cubit = getIt<ProductsCubit>();
  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await cubit.getFor();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    const TextStyle optionStyle = TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);

    void _onItemTapped(int index) {
      setState(() {
        selectedIndex = index;
        log("current index is $selectedIndex");
        cubit.refreshForm();
      });
    }

    List<Widget> body = const [
      CreateProductForm(),
      ProductsList(),
    ];
    return Scaffold(
      body: BlocProvider.value(
        value: cubit,
        child: body[selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Products',
          ),
        ],
        currentIndex: selectedIndex,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}
