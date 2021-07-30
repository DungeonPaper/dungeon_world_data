import 'package:meta/meta.dart';
import 'dw_entity.dart';

class Alignment extends DWEntity {
  /// Alignment name
  String/*!*/ name;

  /// Alignment description
  String/*!*/ description;

  Alignment({
    String key,
    @required this.name,
    @required this.description,
  }) : super(key: key ?? DWEntity.generateKey(name));

  factory Alignment.fromJSON(Map map) => Alignment(
        key: map['key'],
        name: map['name'],
        description: map['description'],
      );

  @override
  Map toJSON() => {
        'key': key,
        'name': name,
        'description': description,
      };

  @override
  Alignment copy() => Alignment.fromJSON(toJSON());
}
