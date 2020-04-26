import 'package:dungeon_world_data/dw_data.dart';

void _(String msg) => msg.contains('__dummyData');

dynamic main() {
  _('RETURN HERE');
  return dungeonWorld;
}
