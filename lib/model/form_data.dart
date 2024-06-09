import 'dart:convert';

class FormData {
  final List<Payload> payload;
  final int resourceId;

  FormData({
    required this.payload,
    required this.resourceId,
  });

  FormData copyWith({
    List<Payload>? payload,
    int? resourceId,
  }) =>
      FormData(
        payload: payload ?? this.payload,
        resourceId: resourceId ?? this.resourceId,
      );

  factory FormData.fromRawJson(String str) => FormData.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory FormData.fromJson(Map<String, dynamic> json) => FormData(
    payload: List<Payload>.from(json["payload"].map((x) => Payload.fromJson(x))),
    resourceId: json["resourceId"],
  );

  Map<String, dynamic> toJson() => {
    "payload": List<dynamic>.from(payload.map((x) => x.toJson())),
    "resourceId": resourceId,
  };
}

class Payload {
  final int id;
  final String name;
  final String value;

  Payload({
    required this.id,
    required this.name,
    required this.value,
  });

  Payload copyWith({
    int? id,
    String? name,
    String? value,
  }) =>
      Payload(
        id: id ?? this.id,
        name: name ?? this.name,
        value: value ?? this.value,
      );

  factory Payload.fromRawJson(String str) => Payload.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Payload.fromJson(Map<String, dynamic> json) => Payload(
    id: json["id"],
    name: json["name"],
    value: json["value"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "value": value,
  };
}
