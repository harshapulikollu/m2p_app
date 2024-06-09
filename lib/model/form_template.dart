import 'dart:convert';

class FormTemplate {
  final String formKey;
  final String formName;
  final String description;
  final String entityType;
  final bool isBaseTable;
  final bool multipleAllowed;
  final List<Parameter> parameters;
  final List<Category> categories;

  FormTemplate({
    required this.formKey,
    required this.formName,
    required this.description,
    required this.entityType,
    required this.isBaseTable,
    required this.multipleAllowed,
    required this.parameters,
    required this.categories,
  });

  FormTemplate copyWith({
    String? formKey,
    String? formName,
    String? description,
    String? entityType,
    bool? isBaseTable,
    bool? multipleAllowed,
    List<Parameter>? parameters,
    List<Category>? categories,
  }) =>
      FormTemplate(
        formKey: formKey ?? this.formKey,
        formName: formName ?? this.formName,
        description: description ?? this.description,
        entityType: entityType ?? this.entityType,
        isBaseTable: isBaseTable ?? this.isBaseTable,
        multipleAllowed: multipleAllowed ?? this.multipleAllowed,
        parameters: parameters ?? this.parameters,
        categories: categories ?? this.categories,
      );

  factory FormTemplate.fromRawJson(String str) => FormTemplate.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FormTemplate.fromJson(Map<String, dynamic> json) => FormTemplate(
    formKey: json["formKey"],
    formName: json["formName"],
    description: json["description"],
    entityType: json["entityType"],
    isBaseTable: json["isBaseTable"],
    multipleAllowed: json["multipleAllowed"],
    parameters: List<Parameter>.from(json["parameters"].map((x) => Parameter.fromJson(x))),
    categories: List<Category>.from(json["categories"].map((x) => categoryValues.map[x]!)),
  );

  Map<String, dynamic> toJson() => {
    "formKey": formKey,
    "formName": formName,
    "description": description,
    "entityType": entityType,
    "isBaseTable": isBaseTable,
    "multipleAllowed": multipleAllowed,
    "parameters": List<dynamic>.from(parameters.map((x) => x.toJson())),
    "categories": List<dynamic>.from(categories.map((x) => categoryValues.reverse[x])),
  };
}

enum Category {
  AGENCY_DETAILS,
  AGENCY_USER_DETAILS
}

final categoryValues = EnumValues({
  "Agency Details": Category.AGENCY_DETAILS,
  "Agency User Details": Category.AGENCY_USER_DETAILS
});

class Parameter {
  final int id;
  final String name;
  final String displayName;
  final String dataType;
  final List<String> possibleValues;
  final bool isMandatory;
  final bool isEditable;
  final bool isHidden;
  final bool isAdditionalField;
  final int displayOrder;
  final int length;
  final Category categoryValue;
  final Category category;
  final String? defaultSelection;
  final Map<String, dynamic>? possibleValuesMap;
  final String valueExpression;

  Parameter({
    required this.id,
    required this.name,
    required this.displayName,
    required this.dataType,
    required this.possibleValues,
    required this.isMandatory,
    required this.isEditable,
    required this.isHidden,
    required this.isAdditionalField,
    required this.displayOrder,
    required this.length,
    required this.categoryValue,
    required this.category,
    this.defaultSelection,
    required this.possibleValuesMap,
    required this.valueExpression,
  });

  Parameter copyWith({
    int? id,
    String? name,
    String? displayName,
    String? dataType,
    List<String>? possibleValues,
    bool? isMandatory,
    bool? isEditable,
    bool? isHidden,
    bool? isAdditionalField,
    int? displayOrder,
    int? length,
    Category? categoryValue,
    Category? category,
    String? defaultSelection,
    Map<String, String>? possibleValuesMap,
    String? valueExpression,
  }) =>
      Parameter(
        id: id ?? this.id,
        name: name ?? this.name,
        displayName: displayName ?? this.displayName,
        dataType: dataType ?? this.dataType,
        possibleValues: possibleValues ?? this.possibleValues,
        isMandatory: isMandatory ?? this.isMandatory,
        isEditable: isEditable ?? this.isEditable,
        isHidden: isHidden ?? this.isHidden,
        isAdditionalField: isAdditionalField ?? this.isAdditionalField,
        displayOrder: displayOrder ?? this.displayOrder,
        length: length ?? this.length,
        categoryValue: categoryValue ?? this.categoryValue,
        category: category ?? this.category,
        defaultSelection: defaultSelection ?? this.defaultSelection,
        possibleValuesMap: possibleValuesMap ?? this.possibleValuesMap,
        valueExpression: valueExpression ?? this.valueExpression,
      );

  factory Parameter.fromRawJson(String str) => Parameter.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Parameter.fromJson(Map<String, dynamic> json) => Parameter(
    id: json["id"],
    name: json["name"],
    displayName: json["displayName"],
    dataType: json["dataType"],
    possibleValues:json["possibleValues"] != null ? List<String>.from(json["possibleValues"].map((x) => x)): [],
    isMandatory: json["isMandatory"],
    isEditable: json["isEditable"],
    isHidden: json["isHidden"],
    isAdditionalField: json["isAdditionalField"],
    displayOrder: json["displayOrder"],
    length: json["length"],
    categoryValue: categoryValues.map[json["categoryValue"]]!,
    category: categoryValues.map[json["category"]]!,
    defaultSelection: json["defaultSelection"],
    possibleValuesMap: json["possibleValuesMap"] != null ? jsonDecode(json['possibleValuesMap']) : {},
    valueExpression: json["valueExpression"] ?? '',
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "displayName": displayName,
    "dataType": dataType,
    "possibleValues": List<dynamic>.from(possibleValues.map((x) => x)),
    "isMandatory": isMandatory,
    "isEditable": isEditable,
    "isHidden": isHidden,
    "isAdditionalField": isAdditionalField,
    "displayOrder": displayOrder,
    "length": length,
    "categoryValue": categoryValues.reverse[categoryValue],
    "category": categoryValues.reverse[category],
    "defaultSelection": defaultSelection,
    "possibleValuesMap": possibleValuesMap,
    "valueExpression": valueExpression,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
