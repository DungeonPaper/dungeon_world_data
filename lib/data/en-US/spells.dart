import 'package:dungeon_world_data/spell.dart';

List<Spell> getSpellList() => [
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "light",
        "name": "Light",
        "description":
            "An item you touch glows with arcane light, about as bright as a torch. It gives off no heat or sound and requires no fuel, but it is otherwise like a mundane torch. You have complete control of the color of the flame. The spell lasts as long as it is in your presence.",
        "explanation": "",
        "level": "cantrip",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"},
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "sanctify",
        "name": "Sanctify",
        "description":
            "Food or water you hold in your hands while you cast this spell is consecrated by your deity. In addition to now being holy or unholy, the affected substance is purified of any mundane spoilage.",
        "explanation": "",
        "level": "rote",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "guidance",
        "name": "Guidance",
        "description":
            "The symbol of your deity appears before you and gestures towards the direction or course of action your deity would have you take then disappears. The message is through gesture only; your communication through this spell is severely limited.",
        "explanation": "",
        "level": "rote",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "bless",
        "name": "Bless",
        "description":
            "Your deity smiles upon a combatant of your choice. They take +1 ongoing so long as battle continues and they stand and fight. While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cure_light_wounds",
        "name": "Cure Light Wounds",
        "description":
            "At your touch wounds scab and bones cease to ache. Heal an ally you touch of 1d8 damage.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": ["1d8"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "detect_alignment",
        "name": "Detect Alignment",
        "description":
            "When you cast this spell choose an alignment: Good, Evil, Lawful, or Chaotic. One of your senses is briefly able to detect that alignment. The GM will tell you what here is of that alignment.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cause_fear",
        "name": "Cause Fear",
        "description":
            "Choose a target you can see and a nearby object. The target is afraid of the object so long as you maintain the spell. Their reaction is up to them: flee, panic, beg, fight. While this spell is ongoing you take -1 to cast a spell. You cannot target entities with less than animal intelligence (magical constructs, undead, automatons, and the like).",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "magic_weapon",
        "name": "Magic Weapon",
        "description":
            "The weapon you hold while casting does +1d4 damage until you dismiss this spell. While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": ["1d4"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "sanctuary",
        "name": "Sanctuary",
        "description":
            "As you cast this spell, you walk the perimeter of an area, consecrating it to your deity. As long as you stay within that area you are alerted whenever someone acts with malice within the sanctuary (including entering with harmful intent). Anyone who receives healing within a sanctuary heals +1d4 HP.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": ["1d4"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "speak_with_dead",
        "name": "Speak With Dead",
        "description":
            "A corpse converses with you briefly. It will answer any three questions you pose to it to the best of the knowledge it had in life and the knowledge it gained in death.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "animate_dead",
        "name": "Animate Dead",
        "description":
            "You invoke a hungry spirit to possess a recently-dead body and serve you. This creates a zombie that follows your orders to the best of its limited abilities. Treat the zombie as a character, but with access to only the basic moves. It has a +1 modifier for all stats and 1 HP. The zombie also gets your choice of 1d4 of these traits:\n\n* It's talented. Give one stat a +2 modifier.\n* It's durable. It has +2 HP for each level you have.\n* It has a functioning brain and can complete complex tasks.\n* It does not appear obviously dead, at least for a day or two.\nThe zombie lasts until it is destroyed by taking damage in excess of its HP, or until you end the spell. While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": ["1d4"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cure_moderate_wounds",
        "name": "Cure Moderate Wounds",
        "description":
            "You staunch bleeding and set bones through magic. Heal an ally you touch of 2d8 damage.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": ["2d8"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "darkness",
        "name": "Darkness",
        "description":
            "Choose an area you can see: it's filled with supernatural darkness and shadow. While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "resurrection",
        "name": "Resurrection",
        "description":
            "Tell the GM you would like to resurrect a corpse whose soul has not yet fully departed this world. Resurrection is always possible, but the GM will give you one or more (possibly all) of these conditions to fulfill:\n\n* It's going to take days/weeks/months\n* You must get help from ____\n* It will require a lot of money\n* You must sacrifice ____ to do it\nThe GM may, depending on the circumstances, allow you to resurrect the corpse now, with the understanding that the conditions must be met before it's permanent, or require you to meet the conditions before the corpse is resurrected.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "hold_person",
        "name": "Hold Person",
        "description":
            "Choose a person you can see. Until you cast a spell or leave their presence they cannot act except to speak. This effect ends immediately if the target takes damage from any source.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "revelation",
        "name": "Revelation",
        "description":
            "Your deity answers your prayers with a moment of perfect understanding. The GM will shed light on the current situation. When acting on the information, you take +1 forward.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cure_critical_wounds",
        "name": "Cure Critical Wounds",
        "description": "Heal an ally you touch of 3d8 damage.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": ["3d8"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divination",
        "name": "Divination",
        "description":
            "Name a person, place, or thing you want to learn about. Your deity grants you visions of the target, as clear as if you were there.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "contagion",
        "name": "Contagion",
        "description":
            "Choose a creature you can see. Until you end this spell, the target suffers from a disease of your choice. While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "words_of_the_unspeaking",
        "name": "Words of the Unspeaking",
        "description":
            "With a touch you speak to the spirits within things. The non-living object you touch answers three questions you pose, as best it can.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "true_seeing",
        "name": "True Seeing",
        "description":
            "You see all things as they truly are. This effect persists until you tell a lie or dismiss the spell. While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"},
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Divination", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "trap_soul",
        "name": "Trap Soul",
        "description":
            "You trap the soul of a dying creature within a gem. The trapped creature is aware of its imprisonment but can still be manipulated through spells, parley, and other effects. All moves against the trapped creature are at +1. You can free the soul at any time but it can never be recaptured once freed.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "word_of_recall",
        "name": "Word of Recall",
        "description":
            "Choose a word. The first time after casting this spell that you speak the chosen word, you and any allies touching you when you cast the spell are immediately returned to the exact spot where you cast the spell. You can only maintain a single location; casting Word of Recall again before speaking the word replaces the earlier spell.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "heal",
        "name": "Heal",
        "description":
            "Touch an ally and you may heal their damage a number of points up to your maximum HP.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "harm",
        "name": "Harm",
        "description":
            "Touch an enemy and strike them with divine wrath-deal 2d8 damage to them and 1d6 damage to yourself. This damage ignores armor.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": ["2d8", "1d6"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "sever",
        "name": "Sever",
        "description":
            "Choose an appendage on the target such as an arm, tentacle, or wing. The appendage is magically severed from their body, causing no damage but considerable pain. Missing an appendage may, for example, keep a winged creature from flying, or a bull from goring you on its horns. While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "mark_of_death",
        "name": "Mark of Death",
        "description":
            "Choose a creature whose true name you know. This spell creates permanent runes on a target surface that will kill that creature, should they read them.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "control_weather",
        "name": "Control Weather",
        "description":
            "Pray for rain-or sun, wind, or snow. Within a day or so, your god will answer. The weather will change according to your will and last a handful of days.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "storm_of_vengeance",
        "name": "Storm of Vengeance",
        "description":
            "Your deity brings the unnatural weather of your choice to pass. Rain of blood or acid, clouds of souls, wind that can carry away buildings, or any other weather you can imagine: ask and it shall come.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "repair",
        "name": "Repair",
        "description":
            "Choose one event in the target's past. All effects of that event, including damage, poison, disease, and magical effects, are ended and repaired. HP and diseases are healed, poisons are neutralized, magical effects are ended.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_presence",
        "name": "Divine Presence",
        "description":
            "Every creature must ask your leave to enter your presence, and you must give permission aloud for them to enter. Any creature without your leave takes an extra 1d10 damage whenever they take damage in your presence. While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "consume_unlife",
        "name": "Consume Unlife",
        "description":
            "The mindless undead creature you touch is destroyed and you steal its death energy to heal yourself or the next ally you touch. The amount of damage healed is equal to the HP that the creature had remaining before you destroyed it.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "plague",
        "name": "Plague",
        "description":
            "Name a city, town, encampment, or other place where people live. As long as this spell is active that place is beset by a plague appropriate to your deity's domains (locusts, death of the first born, etc.) While this spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "prestidigitation",
        "name": "Prestidigitation",
        "description":
            "You perform minor tricks of true magic. If you touch an item as part of the casting you can make cosmetic changes to it: clean it, soil it, cool it, warm it, flavor it, or change its color. If you cast the spell without touching an item you can instead create minor illusions no bigger than yourself. Prestidigitation illusions are crude and clearly illusions-they won't fool anyone, but they might entertain them.",
        "explanation": "",
        "level": "cantrip",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "unseen_servant",
        "name": "Unseen Servant",
        "description":
            "You conjure a simple invisible construct that can do nothing but carry items. It has Load 3 and carries anything you hand to it. It cannot pick up items on its own and can only carry those you give to it. Items carried by an unseen servant appear to float in the air a few paces behind you. An unseen servant that takes damage or leaves your presence is immediately dispelled, dropping any items it carried. Otherwise the unseen servant serves you until you end the spell.",
        "explanation": "",
        "level": "cantrip",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "contact_spirits",
        "name": "Contact Spirits",
        "description":
            "Name the spirit you wish to contact (or leave it to the GM). You pull that creature through the planes, just close enough to speak to you. It is bound to answer any one question you ask to the best of its ability.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Summoning", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "detect_magic",
        "name": "Detect Magic",
        "description":
            "One of your senses is briefly attuned to magic. The GM will tell you what here is magical.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Divination", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "telepathy",
        "name": "Telepathy",
        "description":
            "You form a telepathic bond with a single person you touch, enabling you to converse with that person through your thoughts. You can only have one telepathic bond at a time.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Divination", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "charm_person",
        "name": "Charm Person",
        "description":
            "The person (not beast or monster) you touch while casting this spell counts you as a friend until they take damage or you prove otherwise.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Enchantment", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "invisibility",
        "name": "Invisibility",
        "description":
            "Touch an ally: nobody can see them. They're invisible! The spell persists until the target attacks or you dismiss the effect. While the spell is ongoing you can't cast a spell.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Illusion", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "magic_missile",
        "name": "Magic Missile",
        "description":
            "Projectiles of pure magic spring from your fingers. Deal 2d4 damage to one target.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Evocation", "value": null, "description": ""}
        ],
        "dice": ["2d4"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "alarm",
        "name": "Alarm",
        "description":
            "Walk a wide circle as you cast this spell. Until you prepare spells again your magic will alert you if a creature crosses that circle. Even if you are asleep, the spell will shake you from your slumber.",
        "explanation": "",
        "level": "1",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "dispel_magic",
        "name": "Dispel Magic",
        "description":
            "Choose a spell or magic effect in your presence: this spell rips it apart. Lesser spells are ended, powerful magic is just reduced or dampened so long as you are nearby.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "visions_through_time",
        "name": "Visions Through Time",
        "description":
            "Cast this spell and gaze into a reflective surface to see into the depths of time. The GM will reveal the details of a grim portent to you-a bleak event that will come to pass without your intervention. Theyll tell you something useful about how you can interfere with the grim portent's dark outcomes. Rare is the portent that claims \"You'll live happily ever after.\" Sorry.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Divination", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "fireball",
        "name": "Fireball",
        "description":
            "You evoke a mighty ball of flame that envelops your target and everyone nearby, inflicting 2d6 damage which ignores armor.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Evocation", "value": null, "description": ""}
        ],
        "dice": ["2d6"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "mimic",
        "name": "Mimic",
        "description":
            "You take the form of someone you touch while casting this spell. Your physical characteristics match theirs exactly but your behavior may not. This change persists until you take damage or choose to return to your own form. While this spell is ongoing you lose access to all your wizard moves.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "mirror_image",
        "name": "Mirror Image",
        "description":
            "You create an illusory image of yourself. When you are attacked, roll a d6.\n* On a 4, 5, or 6 the attack hits the illusion instead, the image then dissipates and the spell ends.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Illusion", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "sleep",
        "name": "Sleep",
        "description":
            "1d4 enemies you can see of the GM's choice fall asleep. Only creatures capable of sleeping are affected. They awake as normal: loud noises, jolts, pain.",
        "explanation": "",
        "level": "3",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Enchantment", "value": null, "description": ""}
        ],
        "dice": ["1d4"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cage",
        "name": "Cage",
        "description":
            "The target is held in a cage of magical force. Nothing can get in or out of the cage. The cage remains until you cast another spell or dismiss it. While the spell is ongoing, the caged creature can hear your thoughts and you cannot leave sight of the cage.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Evocation", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "contact_other_plane",
        "name": "Contact Other Plane",
        "description":
            "You send a request to another plane. Specify who or what you'd like to contact by location, type of creature, name, or title. You open a two-way communication with that creature. Your communication can be cut off at any time by you or the creature you contacted.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Divination", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "polymorph",
        "name": "Polymorph",
        "description":
            "Your touch reshapes a creature entirely, they stay in the form you craft until you cast a spell. Describe the new shape you craft, including any stat changes, significant adaptations, or major weaknesses. The GM will then tell you one or more of these:\n* The form will be unstable and temporary\n* The creature's mind will be altered as well\n* The form has an unintended benefit or weakness",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Enchantment", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "summon_monster",
        "name": "Summon Monster",
        "description":
            "A monster appears and aids you as best it can. Treat it as your character, but with access to only the basic moves. It has +1 modifier for all stats, 1 HP, and uses your damage dice. The monster also gets your choice of 1d6 of these traits:\n* It has +2 instead of +1 to one stat\n* It's not reckless\n* It does 1d8 damage\n* Its bond to your plane is strong: +2 HP for each level you have\n* It has some useful adaptation\nThe GM will tell you the type of monster you get based on the traits you select. The creature remains on this plane until it dies or you dismiss it. While the spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "5",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Summoning", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": ["1d6", "1d8"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "dominate",
        "name": "Dominate",
        "description":
            "Your touch pushes your mind into someone else's. You gain 1d4 hold. Spend one hold to make the target take one of these actions:\n* Speak a few words of your choice\n* Give you something they hold\n* Make a concerted attack on a target of your choice\n* Truthfully answer one question\n\nIf you run out of hold the spell ends. If the target takes damage you lose 1 hold. While the spell is ongoing you cannot cast a spell.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Enchantment", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": ["1d4"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "shadow_walk",
        "name": "Shadow Walk",
        "description":
            "The shadows you target with this spell become a portal for you and your allies. Name a location, describing it with a number of words up to your level. Stepping through the portal deposits you and any allies present when you cast the spell at the location you described. The portal may only be used once by each ally.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Illusion", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "contingency",
        "name": "Contingency",
        "description":
            "Choose a 5th level or lower spell you know. Describe a trigger condition using a number of words equal to your level. The chosen spell is held until you choose to unleash it or the trigger condition is met, whichever happens first. You don't have to roll for the held spell, it just takes effect. You may only have a single contingent spell held at a time; if you cast Contingency while you have a held spell, the new held spell replaces the old one.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Evocation", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cloudkill",
        "name": "Cloudkill",
        "description":
            "A cloud of fog drifts into this realm from beyond the Black Gates of Death, filling the immediate area. Whenever a creature in the area takes damage it takes an additional, separate 1d6 damage which ignores armor. This spell persists so long as you can see the affected area, or until you dismiss it.",
        "explanation": "",
        "level": "7",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Summoning", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": ["1d6"]
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "antipathy",
        "name": "Antipathy",
        "description":
            "Choose a target and describe a type of creature or an alignment. Creatures of the specified type or alignment cannot come within sight of the target. If a creature of the specified type does find itself within sight of the target, it immediately flees. This effect continues until you leave the target's presence or you dismiss the spell. While the spell is ongoing you take -1 to cast a spell.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Enchantment", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "alert",
        "name": "Alert",
        "description":
            "Describe an event. The GM will tell you when that event occurs, no matter where you are or how far away the event is. If you choose, you can view the location of the event as though you were there in person. You can only have one Alert active at a time.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Divination", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "soul_gem",
        "name": "Soul Gem",
        "description":
            "You trap the soul of a dying creature within a gem. The trapped creature is aware of its imprisonment but can still be manipulated through spells, parley, and other effects. All moves against the trapped creature are at +1. You can free the soul at any time but it can never be recaptured once freed.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "shelter",
        "name": "Shelter",
        "description":
            "You create a structure out of pure magical power. It can be as large as a castle or as small as a hut, but is impervious to all non-magical damage. The structure endures until you leave it or you end the spell.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Evocation", "value": null, "description": ""},
          {"name": "Ongoing", "value": null, "description": ""}
        ],
        "dice": []
      }),
      Spell.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "perfect_summons",
        "name": "Perfect Summons",
        "description":
            "You teleport a creature to your presence. Name a creature or give a short description of a type of creature. If you named a creature, that creature appears before you. If you described a type of creature, a creature of that type appears before you.",
        "explanation": "",
        "level": "9",
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [
          {"name": "Summoning", "value": null, "description": ""}
        ],
        "dice": []
      })
    ];
