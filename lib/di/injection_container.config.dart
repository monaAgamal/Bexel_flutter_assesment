// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../features/home/data/data_source/local_data_source.dart' as _i7;
import '../features/home/data/data_source/local_data_source_impl.dart' as _i8;
import '../features/home/data/service/data_base_service.dart' as _i3;
import '../features/home/data/service/loacal_data_base_service_impl.dart'
    as _i4;
import '../features/home/domain/repository/products_repository.dart' as _i9;
import '../features/home/domain/repository/products_repository_impl.dart'
    as _i10;
import '../features/home/domain/usecases/get_input_form_usecase.dart' as _i11;
import '../features/home/presentation/cubit/products_cubit.dart' as _i12;
import '../features/home/presentation/input_field_to_widget_factory/input_feiled_to_wiget_factory_impl.dart'
    as _i6;
import '../features/home/presentation/input_field_to_widget_factory/input_field_to_widget_factory.dart'
    as _i5; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.DatabaseService>(() => _i4.LocalDataBaseServiceImpl());
  gh.singleton<_i5.InputFieldToWidgetFactory>(
      _i6.InputFieldToWidgetFactoryImpl());
  gh.lazySingleton<_i7.LocalDataSource>(
      () => _i8.LocalDataSourceImpl(get<_i3.DatabaseService>()));
  gh.singleton<_i9.ProductsRepository>(
      _i10.ProductsRepositoryImpl(localDataSource: get<_i7.LocalDataSource>()));
  gh.factory<_i11.GetInputFormUseCase>(() => _i11.GetInputFormUseCase(
      productsRepository: get<_i9.ProductsRepository>(),
      inputFieldToWidgetFactoryConverter:
          get<_i5.InputFieldToWidgetFactory>()));
  gh.factory<_i12.ProductsCubit>(
      () => _i12.ProductsCubit(get<_i11.GetInputFormUseCase>()));
  return get;
}
