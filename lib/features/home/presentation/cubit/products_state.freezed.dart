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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(LoadUiForm value) loadUiForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
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
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
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
  }) {
    return loadUiForm(uIForm);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
  }) {
    return loadUiForm?.call(uIForm);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Widget> uIForm)? loadUiForm,
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
  }) {
    return loadUiForm(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
  }) {
    return loadUiForm?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(LoadUiForm value)? loadUiForm,
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
