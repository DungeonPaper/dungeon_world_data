import 'dart:convert';

class EntityReference {
  final String key;
  final String name;
  final String type;

  EntityReference({
    required this.key,
    required this.name,
    required this.type,
  });

  factory EntityReference.fromRawJson(String str) => EntityReference.fromJson(json.decode(str));

  factory EntityReference.fromJson(Map<String, dynamic> json) => EntityReference(
        key: json['key'],
        name: json['name'],
        type: json['type'],
      );

  Map<String, dynamic> toJson() => {
        'key': key,
        'name': name,
        'type': type,
      };

  String toRawJson() => json.encode(toJson());

  EntityReference copyWith({
    String? key,
    String? name,
    String? type,
  }) =>
      EntityReference(
        key: key ?? this.key,
        name: name ?? this.name,
        type: type ?? this.type,
      );

  @override
  bool operator ==(Object? other) =>
      other is EntityReference &&
      other.key == key &&
      // other.name == name &&
      other.type == type;

  @override
  int get hashCode => Object.hashAll([
        key,
        // name,
        type
      ]);

  String get debugProperties => 'key: $key, name: $name, type: $type';

  @override
  String toString() => 'EntityReference(key: $key, name: $name, type: $type)';
}
