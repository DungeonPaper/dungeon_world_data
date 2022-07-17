import 'dart:convert';

import 'base.dart';
import 'item.dart';

/// Contains an item and amount
class GearOption with KeyMixin {
  GearOption({
    required this.key,
    required this.item,
    required this.amount,
  });

  @override
  final String key;
  final Item item;
  final double amount;

  GearOption copyWith({
    String? key,
    Item? item,
    double? amount,
  }) =>
      GearOption(
        key: key ?? this.key,
        item: item ?? this.item,
        amount: amount ?? this.amount,
      );

  factory GearOption.fromRawJson(String str) => GearOption.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GearOption.fromJson(Map<String, dynamic> json) => GearOption(
        key: json["key"],
        item: Item.fromJson(json["item"]),
        amount: json["amount"]?.toDouble() ?? 1.0,
      );

  Map<String, dynamic> toJson() => {
        "key": key,
        "item": item.toJson(),
        "amount": amount,
      };

  @override
  String get displayName => '${item.name} x$amount';

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GearOption &&
          runtimeType == other.runtimeType &&
          key == other.key &&
          item == other.item &&
          amount == other.amount;

  @override
  int get hashCode => Object.hashAll([key, item, amount]);

  String get debugProperties => 'key: $key, item: ${item.debugProperties}, amount: $amount';

  @override
  String toString() => 'GearOption($debugProperties)';
}
