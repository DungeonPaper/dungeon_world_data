import 'package:test/test.dart';
import 'package:dungeon_world_data/equipment.dart';
import 'package:dungeon_world_data/dw_data.dart';

void main() {
  test('Key', () {
    Equipment equipment = dungeonWorld.equipment['tricksy_rope'];
    print(equipment);
    expect(equipment.key, equals('tricksy_rope'));
  });

  test('Tags', () {
    Equipment equipment = dungeonWorld.equipment['tricksy_rope'];
    expect(equipment.tags.length, inInclusiveRange(1, double.infinity));
    expect(equipment.tags[0].name, equals('weight'));
    expect(equipment.tags[0].hasValues, equals(true));
    expect(equipment.tags[0].values['weight'], equals('1'));
  });
}
