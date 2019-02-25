

import 'package:dungeon_world_data/_base.dart';

class GearChoice extends DWEntity {
  final String label;
  final List<String> list;

  GearChoice(this.label, this.list);

  @override
  Map toJSON() {
    return {
      'label': label,
      'list': list,
    };
  }
}
