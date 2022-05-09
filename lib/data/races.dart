import 'package:dungeon_world_data/race.dart';

List<Race> getRaceList() => [
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "elf",
        "name": "Elf",
        "description":
            "When you enter an important location (your call) you can ask the GM for one fact from the history of that location.",
        "explanation": "",
        "classKeys": ["bard"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "When you first enter a civilized settlement someone who respects the custom of hospitality to minstrels will take you in as their guest.",
        "explanation": "",
        "classKeys": ["bard"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "dwarf",
        "name": "Dwarf",
        "description":
            "You are one with stone. When you Commune you are also granted a special version of Words of the Unspeaking as a rote which only works on stone.",
        "explanation": "",
        "classKeys": ["cleric"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "Your faith is diverse. Choose one wizard spell. You can cast and be granted that spell as if it was a cleric spell.",
        "explanation": "",
        "classKeys": ["cleric"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "elf",
        "name": "Elf",
        "description":
            "The sap of the elder trees flows within you. In addition to any other attunements, the Great Forest is always considered your land.",
        "explanation": "",
        "classKeys": ["druid"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "As your people learned to bind animals to field and farm, so too are you bound to them. You may always take the shape of any domesticated animal, in addition to your normal options.",
        "explanation": "",
        "classKeys": ["druid"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "halfling",
        "name": "Halfling",
        "description":
            "You sing the healing songs of spring and brook. When you Make Camp, you and your allies heal +1d6.",
        "explanation": "",
        "classKeys": ["druid"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "dwarf",
        "name": "Dwarf",
        "description":
            "When you share a drink with someone, you may Parley with them using CON instead of CHA.",
        "explanation": "",
        "classKeys": ["fighter"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "elf",
        "name": "Elf",
        "description":
            "Choose one weapon-you can always treat weapons of that type as if they had the precise tag.",
        "explanation": "",
        "classKeys": ["fighter"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "halfling",
        "name": "Halfling",
        "description":
            "When you Defy Danger and use your small size to your advantage, take +1.",
        "explanation": "",
        "classKeys": ["fighter"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "Once per battle you may reroll a single damage roll (yours or someone else's).",
        "explanation": "",
        "classKeys": ["fighter"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "When you pray for guidance, even for a moment, and ask, \"What here is evil?\" the GM will tell you, honestly.",
        "explanation": "",
        "classKeys": ["paladin"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "elf",
        "name": "Elf",
        "description":
            "When you Undertake a Perilous Journey through wilderness whatever job you take you succeed as if you rolled a 10+.",
        "explanation": "",
        "classKeys": ["ranger"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "When you Make Camp in a dungeon or city, you don't need to consume a ration.",
        "explanation": "",
        "classKeys": ["ranger"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "halfling",
        "name": "Halfling",
        "description": "When you attack with a ranged weapon, deal +2 damage.",
        "explanation": "",
        "classKeys": ["thief"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "You are a professional. When you Spout Lore or Discern Realities about criminal activities, take +1.",
        "explanation": "",
        "classKeys": ["thief"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "elf",
        "name": "Elf",
        "description":
            "Magic is as natural as breath to you. Detect Magic is a cantrip for you.",
        "explanation": "",
        "classKeys": ["wizard"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "Choose one Cleric spell. You can cast it as if it was a Wizard spell.",
        "explanation": "",
        "classKeys": ["wizard"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "salamander",
        "name": "Salamander",
        "description": "Non-magical heat and fire cannot harm you.",
        "explanation": "",
        "classKeys": ["immolator"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "human",
        "name": "Human",
        "description":
            "When you Make Camp next to a large, open flame, regain all of your HP.",
        "explanation": "",
        "classKeys": ["immolator"],
        "tags": []
      }),
      Race.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "outsider",
        "name": "Outsider",
        "description":
            "You may be elf, dwarf, halfling, or human, but you and your people are not from around here. At the beginning of each session, the GM will ask you something about your homeland, why you left, or what you left behind. If you answer them, mark XP.",
        "explanation": "",
        "classKeys": ["barbarian"],
        "tags": []
      })
    ];
