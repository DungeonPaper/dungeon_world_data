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
      var tag = Tag.parse('close');
      expect(tag.hasValue, equals(false));
      expect(tag.name, equals('close'));
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
  });
}
