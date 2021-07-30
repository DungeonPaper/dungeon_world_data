import 'package:meta/meta.dart';
import 'dw_entity.dart';
import 'mappers.dart';

class Move extends DWEntity {
  /// Move name
  String/*!*/ name;

  /// Move description
  String/*!*/ description;

  /// Move explanation
  String/*!*/ explanation;

  /// Classes that can use this move.
  /// The keys correspond to the `PlayerClass` key.
  List<String/*!*/> classes;

  Move({
    String key,
    @required this.name,
    @required this.description,
    @required this.explanation,
    @required this.classes,
  }) : super(key: key ?? DWEntity.generateKey(name));

  factory Move.fromJSON(Map map) => Move(
        key: map['key'],
        name: map['name'],
        classes: map['classes'] != null
            ? listMapper(map['classes'], (j) => j.toString())
            : [],
        description: map['description'],
        explanation: map['explanation'],
      );

  @override
  Map toJSON() => {
        'key': key,
        'name': name,
        'classes': classes,
        'description': description,
        'explanation': explanation,
      };

  @override
  Move copy() => Move.fromJSON(toJSON());
}
