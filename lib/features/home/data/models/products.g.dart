// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'products.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Products extends _Products with RealmEntity, RealmObject {
  Products(
    String name,
    String details,
    String imagePath,
  ) {
    RealmObject.set(this, 'name', name);
    RealmObject.set(this, 'details', details);
    RealmObject.set(this, 'imagePath', imagePath);
  }

  Products._();

  @override
  String get name => RealmObject.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObject.set(this, 'name', value);

  @override
  String get details => RealmObject.get<String>(this, 'details') as String;
  @override
  set details(String value) => RealmObject.set(this, 'details', value);

  @override
  String get imagePath => RealmObject.get<String>(this, 'imagePath') as String;
  @override
  set imagePath(String value) => RealmObject.set(this, 'imagePath', value);

  @override
  Stream<RealmObjectChanges<Products>> get changes =>
      RealmObject.getChanges<Products>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObject.registerFactory(Products._);
    return const SchemaObject(Products, [
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('details', RealmPropertyType.string),
      SchemaProperty('imagePath', RealmPropertyType.string),
    ]);
  }
}
