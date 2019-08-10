import '_data.dart';
import 'mappers.dart';
import 'tag.dart';

bool isParsed = false;
Map<String, Tag> ALL_TAGS;

init() {
  ALL_TAGS = tagInfoMapper(DW_DATA['tags']..removeWhere((k, v) => k == 'key'));
  isParsed = true;
}
