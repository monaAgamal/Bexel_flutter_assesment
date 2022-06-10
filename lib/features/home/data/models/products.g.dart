// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Products extends _Products with RealmEntity, RealmObject {
  static var _defaultsSet = false;

  Products(
    String make,
    String model, {
    int? kilometers = 500,
  }) {
    if (!_defaultsSet) {
      _defaultsSet = RealmObject.setDefaults<Products>({
        'kilometers': 500,
      });
    }
    RealmObject.set(this, 'make', make);
    RealmObject.set(this, 'model', model);
    RealmObject.set(this, 'kilometers', kilometers);
  }

  Products._();

  @override
  String get make => RealmObject.get<String>(this, 'make') as String;
  @override
  set make(String value) => RealmObject.set(this, 'make', value);

  @override
  String get model => RealmObject.get<String>(this, 'model') as String;
  @override
  set model(String value) => RealmObject.set(this, 'model', value);

  @override
  int? get kilometers => RealmObject.get<int>(this, 'kilometers') as int?;
  @override
  set kilometers(int? value) => RealmObject.set(this, 'kilometers', value);

  @override
  Stream<RealmObjectChanges<Products>> get changes =>
      RealmObject.getChanges<Products>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Products._);
    return const SchemaObject(Products, [
      SchemaProperty('make', RealmPropertyType.string),
      SchemaProperty('model', RealmPropertyType.string),
      SchemaProperty('kilometers', RealmPropertyType.int, optional: true),
    ]);
  }
}
