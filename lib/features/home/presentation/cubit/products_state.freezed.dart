// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'products_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Widget> uIForm) loadUiForm,
    required TResult Function() loading,
    required TResult Function(List<Product> products) fetchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadUiForm value) loadUiForm,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchProducts value) fetchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductsStateCopyWith<$Res> {
  factory $ProductsStateCopyWith(
          ProductsState value, $Res Function(ProductsState) then) =
      _$ProductsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ProductsStateCopyWithImpl<$Res>
    implements $ProductsStateCopyWith<$Res> {
  _$ProductsStateCopyWithImpl(this._value, this._then);

  final ProductsState _value;
  // ignore: unused_field
  final $Res Function(ProductsState) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res> extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, (v) => _then(v as _$Initial));

  @override
  _$Initial get _value => super._value as _$Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'ProductsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Widget> uIForm) loadUiForm,
    required TResult Function() loading,
    required TResult Function(List<Product> products) fetchProducts,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadUiForm value) loadUiForm,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchProducts value) fetchProducts,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements ProductsState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class _$$LoadUiFormCopyWith<$Res> {
  factory _$$LoadUiFormCopyWith(
          _$LoadUiForm value, $Res Function(_$LoadUiForm) then) =
      __$$LoadUiFormCopyWithImpl<$Res>;
  $Res call({List<Widget> uIForm});
}

/// @nodoc
class __$$LoadUiFormCopyWithImpl<$Res> extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$LoadUiFormCopyWith<$Res> {
  __$$LoadUiFormCopyWithImpl(
      _$LoadUiForm _value, $Res Function(_$LoadUiForm) _then)
      : super(_value, (v) => _then(v as _$LoadUiForm));

  @override
  _$LoadUiForm get _value => super._value as _$LoadUiForm;

  @override
  $Res call({
    Object? uIForm = freezed,
  }) {
    return _then(_$LoadUiForm(
      uIForm: uIForm == freezed
          ? _value._uIForm
          : uIForm // ignore: cast_nullable_to_non_nullable
              as List<Widget>,
    ));
  }
}

/// @nodoc

class _$LoadUiForm implements LoadUiForm {
  const _$LoadUiForm({required final List<Widget> uIForm}) : _uIForm = uIForm;

  final List<Widget> _uIForm;
  @override
  List<Widget> get uIForm {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uIForm);
  }

  @override
  String toString() {
    return 'ProductsState.loadUiForm(uIForm: $uIForm)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadUiForm &&
            const DeepCollectionEquality().equals(other._uIForm, _uIForm));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_uIForm));

  @JsonKey(ignore: true)
  @override
  _$$LoadUiFormCopyWith<_$LoadUiForm> get copyWith =>
      __$$LoadUiFormCopyWithImpl<_$LoadUiForm>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Widget> uIForm) loadUiForm,
    required TResult Function() loading,
    required TResult Function(List<Product> products) fetchProducts,
  }) {
    return loadUiForm(uIForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
  }) {
    return loadUiForm?.call(uIForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
    required TResult orElse(),
  }) {
    if (loadUiForm != null) {
      return loadUiForm(uIForm);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadUiForm value) loadUiForm,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchProducts value) fetchProducts,
  }) {
    return loadUiForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
  }) {
    return loadUiForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
    required TResult orElse(),
  }) {
    if (loadUiForm != null) {
      return loadUiForm(this);
    }
    return orElse();
  }
}

abstract class LoadUiForm implements ProductsState {
  const factory LoadUiForm({required final List<Widget> uIForm}) = _$LoadUiForm;

  List<Widget> get uIForm => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$LoadUiFormCopyWith<_$LoadUiForm> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingCopyWith<$Res> {
  factory _$$LoadingCopyWith(_$Loading value, $Res Function(_$Loading) then) =
      __$$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<$Res> extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$LoadingCopyWith<$Res> {
  __$$LoadingCopyWithImpl(_$Loading _value, $Res Function(_$Loading) _then)
      : super(_value, (v) => _then(v as _$Loading));

  @override
  _$Loading get _value => super._value as _$Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'ProductsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Widget> uIForm) loadUiForm,
    required TResult Function() loading,
    required TResult Function(List<Product> products) fetchProducts,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadUiForm value) loadUiForm,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchProducts value) fetchProducts,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements ProductsState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class _$$FetchProductsCopyWith<$Res> {
  factory _$$FetchProductsCopyWith(
          _$FetchProducts value, $Res Function(_$FetchProducts) then) =
      __$$FetchProductsCopyWithImpl<$Res>;
  $Res call({List<Product> products});
}

/// @nodoc
class __$$FetchProductsCopyWithImpl<$Res>
    extends _$ProductsStateCopyWithImpl<$Res>
    implements _$$FetchProductsCopyWith<$Res> {
  __$$FetchProductsCopyWithImpl(
      _$FetchProducts _value, $Res Function(_$FetchProducts) _then)
      : super(_value, (v) => _then(v as _$FetchProducts));

  @override
  _$FetchProducts get _value => super._value as _$FetchProducts;

  @override
  $Res call({
    Object? products = freezed,
  }) {
    return _then(_$FetchProducts(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
    ));
  }
}

/// @nodoc

class _$FetchProducts implements FetchProducts {
  const _$FetchProducts({required final List<Product> products})
      : _products = products;

  final List<Product> _products;
  @override
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  @override
  String toString() {
    return 'ProductsState.fetchProducts(products: $products)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchProducts &&
            const DeepCollectionEquality().equals(other._products, _products));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_products));

  @JsonKey(ignore: true)
  @override
  _$$FetchProductsCopyWith<_$FetchProducts> get copyWith =>
      __$$FetchProductsCopyWithImpl<_$FetchProducts>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Widget> uIForm) loadUiForm,
    required TResult Function() loading,
    required TResult Function(List<Product> products) fetchProducts,
  }) {
    return fetchProducts(products);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
  }) {
    return fetchProducts?.call(products);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    TResult Function()? loading,
    TResult Function(List<Product> products)? fetchProducts,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(products);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadUiForm value) loadUiForm,
    required TResult Function(Loading value) loading,
    required TResult Function(FetchProducts value) fetchProducts,
  }) {
    return fetchProducts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
  }) {
    return fetchProducts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
    TResult Function(Loading value)? loading,
    TResult Function(FetchProducts value)? fetchProducts,
    required TResult orElse(),
  }) {
    if (fetchProducts != null) {
      return fetchProducts(this);
    }
    return orElse();
  }
}

abstract class FetchProducts implements ProductsState {
  const factory FetchProducts({required final List<Product> products}) =
      _$FetchProducts;

  List<Product> get products => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$FetchProductsCopyWith<_$FetchProducts> get copyWith =>
      throw _privateConstructorUsedError;
}
