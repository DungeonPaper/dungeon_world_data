import 'package:meta/meta.dart';
import 'package:test/test.dart';
import 'package:dungeon_world_data/dw_data.dart';

class Test1 extends DWEntity {
  final int value;
  Test1({
    String key,
    @required this.value,
  }) : super(key: key);

  @override
  DWEntity copy() => Test1.fromJSON(toJSON());

  @override
  dynamic toJSON() => 1;

  factory Test1.fromJSON(int value) => Test1(value: value);
}

void main() {
  group('DWEntity', () {
    test('hashCode', () {
      var t1 = Test1(key: '1', value: 1);
      var t2 = Test1(key: '1', value: 1);
      expect(t1, equals(t2));
    });
  });
}
