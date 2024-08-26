import 'package:dungeon_world_data/tag.dart';

List<Tag> getTagList() => [
      Tag.fromJson({
        "name": "Applied",
        "value": null,
        "description":
            "It's only useful when carefully applied to a person or to something they eat or drink."
      }),
      Tag.fromJson({
        "name": "Awkward",
        "value": null,
        "description": "It's unwieldy and tough to use."
      }),
      Tag.fromJson({
        "name": "Bonus",
        "value": null,
        "description":
            "It modifies your effectiveness in a specified situation. It might be \"+1 forward to spout lore\" or \"-1 ongoing to hack and slash.\""
      }),
      Tag.fromJson({
        "name": "Coins",
        "value": null,
        "description":
            "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
      }),
      Tag.fromJson({
        "name": "Dangerous",
        "value": null,
        "description":
            "It's easy to get in trouble with it. If you interact with it without proper precautions the GM may freely invoke the consequences of your foolish actions."
      }),
      Tag.fromJson({
        "name": "Ration",
        "value": null,
        "description": "It's edible, more or less."
      }),
      Tag.fromJson({
        "name": "Requires",
        "value": null,
        "description":
            "It's only useful to certain people. If you don't meet the requirements it works poorly, if at all."
      }),
      Tag.fromJson({
        "name": "Slow",
        "value": null,
        "description": "It takes minutes or more to use."
      }),
      Tag.fromJson({
        "name": "Touch",
        "value": null,
        "description": "It's used by touching it to the target's skin."
      }),
      Tag.fromJson({
        "name": "Two handed",
        "value": null,
        "description": "It takes two hands to use it effectively."
      }),
      Tag.fromJson({
        "name": "Weight",
        "value": null,
        "description":
            "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
      }),
      Tag.fromJson({
        "name": "Worn",
        "value": null,
        "description": "To use it, you have to be wearing it."
      }),
      Tag.fromJson({
        "name": "Uses",
        "value": null,
        "description": "It can only be used n times."
      }),
      Tag.fromJson({
        "name": "Ammo",
        "value": null,
        "description":
            "It counts as ammunition for appropriate ranged weapons. The number indicated does not represent individual arrows or sling stones, but represents what you have left on hand."
      }),
      Tag.fromJson({
        "name": "Forceful",
        "value": null,
        "description":
            "It can knock someone back a pace, maybe even off their feet."
      }),
      Tag.fromJson({
        "name": "Damage",
        "value": null,
        "description":
            "It is particularly harmful to your enemies. When you deal damage, you add n to it."
      }),
      Tag.fromJson({
        "name": "Ignores armor",
        "value": null,
        "description": "Don't subtract armor from the damage taken."
      }),
      Tag.fromJson({
        "name": "Messy",
        "value": null,
        "description":
            "It does damage in a particularly destructive way, ripping people and things apart."
      }),
      Tag.fromJson({
        "name": "Piercing",
        "value": null,
        "description":
            "It goes right through armor. When you deal damage with n piercing, you subtract n from the enemy's armor for that attack."
      }),
      Tag.fromJson({
        "name": "Precise",
        "value": null,
        "description":
            "It rewards careful strikes. You use DEX to Hack & Slash with this weapon, not STR."
      }),
      Tag.fromJson({
        "name": "Reload",
        "value": null,
        "description":
            "After you attack with it, it takes more than a moment to reset for another attack."
      }),
      Tag.fromJson({
        "name": "Stun",
        "value": null,
        "description":
            "When you attack with it, it does stun damage instead of normal damage."
      }),
      Tag.fromJson({
        "name": "Thrown",
        "value": null,
        "description":
            "Throw it at someone to hurt them. If you Volley with this weapon, you can't choose to mark off ammo on a 7-9; once you throw it, it's gone until you can recover it."
      }),
      Tag.fromJson({
        "name": "Hand",
        "value": null,
        "description":
            "It's useful for attacking something within your reach, no further."
      }),
      Tag.fromJson({
        "name": "Close",
        "value": null,
        "description":
            "It's useful for attacking something at arm's reach plus a foot or two."
      }),
      Tag.fromJson({
        "name": "Reach",
        "value": null,
        "description":
            "It's useful for attacking something that's several feet away-maybe as far as ten."
      }),
      Tag.fromJson({
        "name": "Near",
        "value": null,
        "description":
            "It's useful for attacking if you can see the whites of their eyes."
      }),
      Tag.fromJson({
        "name": "Far",
        "value": null,
        "description":
            "It's useful for attacking something in shouting distance."
      }),
      Tag.fromJson({
        "name": "Armor",
        "value": null,
        "description":
            "It protects you and stacks with other armor. Add its value to your total armor."
      }),
      Tag.fromJson({
        "name": "Clumsy",
        "value": null,
        "description":
            "It's tough to move around with. -1 ongoing while using it. This penalty is cumulative."
      }),
      Tag.fromJson({
        "name": "Magical",
        "value": null,
        "description":
            "When making your own magic items keep in mind that these items are magical. Simple modifiers, like+1 damage, are the realm of the mundane-magic items should provide more interesting bonuses."
      })
    ];
