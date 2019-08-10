import 'package:dungeon_world_data/tag.dart';
import 'package:test/test.dart';

void main() {
  group('Tags', () {
    test('key', () {
      var tag = Tag.parse('two-handed');
      expect(tag.hasValue, equals(false));
      expect(tag.name, equals('two-handed'));
      expect(tag.key, equals('two_handed'));
    });
    test('Parse string', () {
      var tag1 = Tag.parse('close');
      var tag2 = Tag.parse('1 coins');

      expect(tag1.hasValue, equals(false));
      expect(tag1.name, equals('close'));

      expect(tag2.hasValue, equals(true));
      expect(tag2.value, equals(1));
      expect(tag2.name, equals('coins'));
    });
    test('Parse map', () {
      var tag = Tag.parse({'weight': 1});
      expect(tag.name, equals('weight'));
      expect(tag.hasValue, equals(true));
      expect(tag.value, equals(1));
    });
    test('toString with value', () {
      var tag = Tag.parse({'coins':10});
      expect(tag.toString(), equals('coins: 10'));
    });
    test('toString without value', () {
      var tag = Tag.parse('near');
      expect(tag.toString(), equals('near'));
    });
    test('toJSON with value', () {
      var tag = Tag.parse({'weight':10});
      var json = tag.toJSON();
      expect(json, equals({'weight':10}));
    });
    test('toJSON without value', () {
      var tag = Tag.parse('two-handed');
      expect(tag.toJSON(), equals('two-handed'));
    });
  });
}
