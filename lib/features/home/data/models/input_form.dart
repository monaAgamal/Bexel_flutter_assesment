import 'dart:convert';

// class InputForm {
//   final List<InputFormField> inputFormFields;
//
//   InputForm({
//     required this.inputFormFields,
//   });
//
//   factory InputForm.fromJson(Map<String, dynamic> json) =>
//       List<InputFormField>.from(json["values"].map((x) => Value.fromJson(x)))
//   ;
//
// }

class InputFormField {
  InputFormField({
    required this.type,
    required this.name,
    required this.label,
    required this.validation,
    required this.multiple,
    required this.modelValues,
    required this.className,
  });

  String type;
  String? name;
  String label;
  Validation validation;
  bool? multiple;
  List<Value>? modelValues;
  String? className;

  factory InputFormField.fromRawJson(String str) =>
      InputFormField.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory InputFormField.fromJson(Map<String, dynamic> json) => InputFormField(
        type: json["type"],
        name: json["name"],
        label: json["label"],
        validation: Validation.fromJson(json["validation"]),
        multiple: json["multiple"],
        modelValues: json["values"] == null
            ? null
            : List<Value>.from(json["values"].map((x) => Value.fromJson(x))),
        className: json["className"],
      );

  Map<String, dynamic> toJson() => {
        "type": type,
        "name": name,
        "label": label,
        "validation": validation.toJson(),
        "multiple": multiple,
        "values": modelValues == null
            ? null
            : List<dynamic>.from(modelValues!.map((x) => x.toJson())),
        "className": className,
      };
}

class Validation {
  Validation({
    required this.required,
    required this.accept,
    required this.maxlength,
    required this.dateFormat,
  });

  bool required;
  String? accept;
  int? maxlength;
  String? dateFormat;

  factory Validation.fromRawJson(String str) =>
      Validation.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Validation.fromJson(Map<String, dynamic> json) => Validation(
        required: json["required"],
        accept: json["accept"] == null ? null : json["accept"],
        maxlength: json["maxlength"] == null ? null : json["maxlength"],
        dateFormat: json["dateFormat"] == null ? null : json["dateFormat"],
      );

  Map<String, dynamic> toJson() => {
        "required": required,
        "accept": accept == null ? null : accept,
        "maxlength": maxlength == null ? null : maxlength,
        "dateFormat": dateFormat == null ? null : dateFormat,
      };
}

class Value {
  Value({
    required this.label,
    required this.value,
    required this.selected,
  });

  String? label;
  String? value;
  bool? selected;

  factory Value.fromRawJson(String str) => Value.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Value.fromJson(Map<String, dynamic> json) => Value(
        label: json["label"],
        value: json["value"],
        selected: json["selected"] == null ? null : json["selected"],
      );

  Map<String, dynamic> toJson() => {
        "label": label,
        "value": value,
        "selected": selected == null ? null : selected,
      };
}
