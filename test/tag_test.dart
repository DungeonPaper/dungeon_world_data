import 'package:dungeon_world_data/tag.dart';
import 'package:test/test.dart';

void main() {
  group('Tags', () {
    test('Parsing', () {
      const str = 'close';
      const obj = {'weight': 1};
      var tag1 = Tag.parse(str);
      var tag2 = Tag.parse(obj);
      expect(tag1.name, equals('close'));
      expect(tag1.hasValues, equals(false));
      expect(tag2.name, equals('weight'));
      expect(tag2.values['weight'], equals(1));
    });
  });
}
