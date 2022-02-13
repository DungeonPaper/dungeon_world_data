import 'dart:convert';

import 'item.dart';

class GearOption {
  GearOption({
    required this.item,
    required this.amount,
  });

  final Item item;
  final double amount;

  GearOption copyWith({
    Item? item,
    double? amount,
  }) =>
      GearOption(
        item: item ?? this.item,
        amount: amount ?? this.amount,
      );

  factory GearOption.fromRawJson(String str) =>
      GearOption.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory GearOption.fromJson(Map<String, dynamic> json) => GearOption(
        item: json["item"],
        amount: json["amount"],
      );

  Map<String, dynamic> toJson() => {
        "item": item,
        "amount": amount,
      };
}
