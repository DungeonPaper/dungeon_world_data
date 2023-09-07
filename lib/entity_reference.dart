import 'dart:convert';

/// A reference to an entity.
/// This is useful for storing the name & key of an entity without having to store the entire entity,
/// possibly for use in a dropdown or other UI element, or linking between entities in a database.
class EntityReference {
  /// The key of the entity.
  final String key;

  /// The name of the entity.
  final String name;

  /// The type of the entity.
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
