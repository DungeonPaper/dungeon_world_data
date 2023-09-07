import 'dart:convert';

import 'base.dart';
import 'item.dart';

/// Represents a single option in a [GearSelection].
/// Contains an item, and amount to receive.
class GearOption with KeyMixin {
  GearOption({
    required this.key,
    required this.item,
    required this.amount,
  });

  /// The key of the gear option.
  @override
  final String key;

  /// The item to receive.
  final Item item;

  /// The amount of the item to receive.
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
