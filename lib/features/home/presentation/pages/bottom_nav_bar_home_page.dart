import 'package:bexel_assesment/di/injection_container.dart';
import 'package:bexel_assesment/features/home/presentation/cubit/products_cubit.dart';
import 'package:bexel_assesment/features/home/presentation/cubit/products_state.dart';
import 'package:bexel_assesment/features/home/presentation/widgets/create_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BottomNavBarHomePage extends StatefulWidget {
  const BottomNavBarHomePage({Key? key}) : super(key: key);

  @override
  State<BottomNavBarHomePage> createState() => _BottomNavBarHomePageState();
}

class _BottomNavBarHomePageState extends State<BottomNavBarHomePage> {
  final cubit = getIt<ProductsCubit>();

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
    int _selectedIndex = 0;
    const TextStyle optionStyle = TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black);
    List<Widget> _widgetOptions = <Widget>[
      Text(
        'Index 1: Business',
        style: optionStyle,
      ),
    ];

    void _onItemTapped(int index) {
      setState(() {
        _selectedIndex = index;
      });
    }

    return Scaffold(
      body: BlocBuilder<ProductsCubit, ProductsState>(
        bloc: cubit,
        builder: (context, state) {
          return state.maybeWhen(
            loadUiForm: (list) => CreateProductForm(parsedWidgets: list),
            orElse: () {
              return Container();
            },
          );
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
