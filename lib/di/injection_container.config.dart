// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/home/data/data_source/local_data_source.dart' as _i5;
import '../features/home/data/data_source/local_data_source_impl.dart' as _i6;
import '../features/home/domain/repository/products_repository.dart' as _i7;
import '../features/home/domain/repository/products_repository_impl.dart'
    as _i8;
import '../features/home/domain/usecases/get_input_form_usecase.dart' as _i9;
import '../features/home/presentation/cubit/products_cubit.dart' as _i10;
import '../features/home/presentation/input_field_to_widget_factory/input_feiled_to_wiget_factory_impl.dart'
    as _i4;
import '../features/home/presentation/input_field_to_widget_factory/input_field_to_widget_factory.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.InputFieldToWidgetFactory>(
      _i4.InputFieldToWidgetFactoryImpl());
  gh.lazySingleton<_i5.LocalDataSource>(() => _i6.LocalDataSourceImpl());
  gh.singleton<_i7.ProductsRepository>(
      _i8.ProductsRepositoryImpl(localDataSource: get<_i5.LocalDataSource>()));
  gh.factory<_i9.GetInputFormUseCase>(() => _i9.GetInputFormUseCase(
      productsRepository: get<_i7.ProductsRepository>(),
      inputFieldToWidgetFactoryConverter:
          get<_i3.InputFieldToWidgetFactory>()));
  gh.factory<_i10.ProductsCubit>(
      () => _i10.ProductsCubit(get<_i9.GetInputFormUseCase>()));
  return get;
}
