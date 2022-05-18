import 'package:dungeon_world_data/character_class.dart';

List<CharacterClass> getCharacterClassList() => [
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Bard",
        "key": "bard",
        "description":
            "The poems say an adventurer's life is all open roads and the glory of coin and combat. The tales told in every farmhand-filled inn have to have some ring of truth to them, don't they? The songs to inspire peasantry and royals alike-to soothe the savage beast or drive men to a frenzy-have to come from somewhere.\n\nEnter the bard. You, with your smooth tongue and quick wit. You teller-of-tales and singer-of-songs. It takes a mere minstrel to retell a thing but a true bard to live it. Strap on your boots, noble orator. Sharpen that hidden dagger and take up the call. Someone's got to be there, fighting shoulder-to-shoulder with the goons and the thugs and the soon-to-be-heroes. Who better than you to write the tale of your own heroism?\n\nNobody. Get going.",
        "damageDice": "1d6",
        "load": 9,
        "hp": 6,
        "alignments": {
          "good": "Perform your art to aid someone else.",
          "evil": "",
          "lawful": "",
          "neutral": "Avoid a conflict or defuse a tense situation.",
          "chaotic": "Spur others to significant and unplanned decisive action."
        },
        "bonds": [
          "This is not my first adventure with __________.",
          "I sang stories of __________ long before I ever met them in person.",
          "__________ is often the butt of my jokes.",
          "I am writing a ballad about the adventures of __________.",
          "__________ trusted me with a secret.",
          "__________ does not trust me, and for good reason."
        ],
        "gearChoices": [
          {
            "key": "5becbb00-f57a-4655-b955-b291e1bcaeb4",
            "description": "You have dungeon rations (5 uses, 1 weight)",
            "selections": [
              {
                "key": "dungeon_rations",
                "description": "Dungeon Rations",
                "options": [
                  {
                    "key": "dungeon_rations",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dungeon_rations",
                      "name": "Dungeon Rations",
                      "description": "Not tasty, but not bad either.",
                      "tags": [
                        {
                          "name": "Ration",
                          "value": null,
                          "description": "It's edible, more or less."
                        },
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 3,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [-1],
            "maxSelections": 1
          },
          {
            "key": "58883c28-13ec-46a2-8454-a09436cb6e79",
            "description": "Choose one instrument, all are 0 weight for you",
            "selections": [
              {
                "key": "your_fathers_mandolin_repaired",
                "description": "Your father's mandolin, repaired",
                "options": [
                  {
                    "key": "your_fathers_mandolin_repaired",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "fathers_mandolin",
                      "name": "Father's Mandolin",
                      "description": "Your father's mandolin, repaired.",
                      "tags": [
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "a_fine_lute_a_gift_from_a_noble",
                "description": "A fine lute, a gift from a noble",
                "options": [
                  {
                    "key": "a_fine_lute_a_gift_from_a_noble",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "fine_lute",
                      "name": "Fine Lute",
                      "description": "A fine lute, a gift from a noble.",
                      "tags": [
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "the_pipes_with_which_you_courted_your_first_love",
                "description": "The pipes with which you courted your first love",
                "options": [
                  {
                    "key": "the_pipes_with_which_you_courted_your_first_love",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "memorable_pipes",
                      "name": "Memorable Pipes",
                      "description": "The pipes with which you courted your first love",
                      "tags": [
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "a_stolen_horn",
                "description": "A stolen horn",
                "options": [
                  {
                    "key": "a_stolen_horn",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "stolen_horn",
                      "name": "Stolen Horn",
                      "description": "A stolen horn",
                      "tags": [
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "a_fiddle_never_before_played",
                "description": "A fiddle, never before played",
                "options": [
                  {
                    "key": "a_fiddle_never_before_played",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "unplayed_fiddle",
                      "name": "Unplayed Fiddle",
                      "description": "A fiddle, never before played.",
                      "tags": [
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "a_songbook_in_a_forgotten_tongue",
                "description": "A songbook in a forgotten tongue",
                "options": [
                  {
                    "key": "a_songbook_in_a_forgotten_tongue",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "forgotten_songbook",
                      "name": "Forgotten Songbook",
                      "description": "A songbook in a forgotten tongue.",
                      "tags": [
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "df39287d-9732-4949-a7ab-5d23edc9be5d",
            "description": "Choose your clothing",
            "selections": [
              {
                "key": "leather_armor",
                "description": "Leather Armor",
                "options": [
                  {
                    "key": "leather_armor",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "leather_armor",
                      "name": "Leather Armor",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Worn",
                          "value": null,
                          "description": "To use it, you have to be wearing it."
                        },
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "ostentatious_clothes",
                "description": "Ostentatious clothes",
                "options": [
                  {
                    "key": "ostentatious_clothes",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "ostentatious_clothes",
                      "name": "Ostentatious clothes",
                      "description":
                          "Clothes that are vulgar or pretentious, designed to impress attract notice.",
                      "tags": [
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "e8aac246-f06e-4588-a70d-bbd19595fe79",
            "description": "Choose your armament",
            "selections": [
              {
                "key": "dueling_rapier",
                "description": "Dueling Rapier",
                "options": [
                  {
                    "key": "dueling_rapier",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dueling_rapier",
                      "name": "Dueling Rapier",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Piercing",
                          "value": 1,
                          "description":
                              "It goes right through armor. When you deal damage with n piercing, you subtract n from the enemy's armor for that attack."
                        },
                        {
                          "name": "Precise",
                          "value": null,
                          "description":
                              "It rewards careful strikes. You use DEX to Hack & Slash with this weapon, not STR."
                        },
                        {
                          "name": "Coins",
                          "value": 50,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "ragged_bow",
                "description": "Ragged Bow",
                "options": [
                  {
                    "key": "ragged_bow",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "ragged_bow",
                      "name": "Ragged Bow",
                      "description": "",
                      "tags": [
                        {
                          "name": "Near",
                          "value": null,
                          "description":
                              "It's useful for attacking if you can see the whites of their eyes."
                        },
                        {
                          "name": "Coins",
                          "value": 15,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "06654a6a-5a5e-4e3e-90bc-159e7028f836",
            "description": "Choose one",
            "selections": [
              {
                "key": "adventuring_gear",
                "description": "Adventuring Gear",
                "options": [
                  {
                    "key": "adventuring_gear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "adventuring_gear",
                      "name": "Adventuring Gear",
                      "description":
                          "Adventuring gear is a collection of useful mundane items such as chalk, poles, spikes, ropes, etc. When you rummage through your adventuring gear for some useful mundane item, you find what you need and mark off a use.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 20,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "bandages",
                "description": "Bandages",
                "options": [
                  {
                    "key": "bandages",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "bandages",
                      "name": "Bandages",
                      "description":
                          "When you have a few minutes to bandage someone else's wounds, heal them of 4 damage and expend a use.",
                      "tags": [
                        {"name": "Uses", "value": 3, "description": "It can only be used n times."},
                        {
                          "name": "Slow",
                          "value": null,
                          "description": "It takes minutes or more to use."
                        },
                        {
                          "name": "Coins",
                          "value": 5,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "halfling_pipeleaf",
                "description": "Halfling Pipeleaf",
                "options": [
                  {
                    "key": "halfling_pipeleaf",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "halfling_pipeleaf",
                      "name": "Halfling Pipeleaf",
                      "description":
                          "When you share halfling pipeleaf with someone, expend two uses and take +1 forward to Parley with them.",
                      "tags": [
                        {"name": "Uses", "value": 6, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 5,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {"key": "coins", "description": "3 coins", "options": [], "coins": 3.0}
            ],
            "preselect": [],
            "maxSelections": 1
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Cleric",
        "key": "cleric",
        "description":
            "The lands of Dungeon World are a gods-forsaken mess. They're lousy with the walking dead, beasts of all sorts, and the vast unnatural spaces between safe and temple-blessed civilizations. It is a godless world out there. That's why it needs you.\n\nBringing the glory of your god to the heathens isn't just in your nature-it's your calling. It falls to you to proselytize with sword and mace and spell. To cleave deep into the witless heart of the wilds and plant the seed of divinity there. Some say that it is best to keep god close to your heart. You know that's rubbish. God lives at the edge of a blade.\n\nShow the world who is lord.",
        "damageDice": "1d6",
        "load": 10,
        "hp": 8,
        "alignments": {
          "good": "Endanger yourself to heal another.",
          "evil": "Harm another to prove the superiority of your church or god.",
          "lawful": "Endanger yourself following the precepts of your church or god.",
          "neutral": "",
          "chaotic": ""
        },
        "bonds": [
          "__________ has insulted my deity; I do not trust them.",
          "__________ is a good and faithful person; I trust them implicitly.",
          "__________ is in constant danger, I will keep them safe.",
          "I am working on converting __________ to my faith."
        ],
        "gearChoices": [
          {
            "key": "74014bad-3ec2-42b8-a1ea-d2b9f5f89c93",
            "description": "Choose your defenses",
            "selections": [
              {
                "key": "chainmail",
                "description": "Chainmail",
                "options": [
                  {
                    "key": "chainmail",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "chainmail",
                      "name": "Chainmail",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Worn",
                          "value": null,
                          "description": "To use it, you have to be wearing it."
                        },
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "shield",
                "description": "Shield",
                "options": [
                  {
                    "key": "shield",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "shield",
                      "name": "Shield",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Coins",
                          "value": 15,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "b8ea287f-05b8-4777-85a7-0c9e63f99471",
            "description": "Choose your armament",
            "selections": [
              {
                "key": "warhammer",
                "description": "Warhammer",
                "options": [
                  {
                    "key": "warhammer",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "warhammer",
                      "name": "Warhammer",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Coins",
                          "value": 8,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "mace",
                "description": "Mace",
                "options": [
                  {
                    "key": "mace",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "mace",
                      "name": "Mace",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Coins",
                          "value": 8,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "staff",
                "description": "Staff",
                "options": [
                  {
                    "key": "staff",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "staff",
                      "name": "Staff",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Two_handed",
                          "value": null,
                          "description": "It takes two hands to use it effectively."
                        },
                        {
                          "name": "Coins",
                          "value": 1,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "eb157805-8285-45ae-ba2f-b896b48246c9",
            "description": "Choose one",
            "selections": [
              {
                "key": "adventuring_gear",
                "description": "Adventuring Gear",
                "options": [
                  {
                    "key": "adventuring_gear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "adventuring_gear",
                      "name": "Adventuring Gear",
                      "description":
                          "Adventuring gear is a collection of useful mundane items such as chalk, poles, spikes, ropes, etc. When you rummage through your adventuring gear for some useful mundane item, you find what you need and mark off a use.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 20,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "healing_potion",
                "description": "Healing Potion",
                "options": [
                  {
                    "key": "healing_potion",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "healing_potion",
                      "name": "Healing Potion",
                      "description":
                          "When you drink an entire healing potion, heal yourself of 10 damage or remove one debility, your choice.",
                      "tags": [
                        {
                          "name": "Coins",
                          "value": 50,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Druid",
        "key": "druid",
        "description":
            "Cast your eyes around the fire. What has brought you to these people, stinking of the dust and sweat of the city? Perhaps it is a kindness-do you protect them as the mother bear watches over her cubs? Are they your pack, now? Strange brothers and sisters you have. Whatever your inspiration, they would certainly fail without your sharp senses and sharper claws.\n\nYou are of the sacred spaces; you are born of soil and wear the marks of her spirits on your skin. You may have had a life before, maybe you were a city dweller like them, but not now. You've given up that static shape. Listen to your allies pray to their carved stone gods and polish their silver shells. They speak of the glory they'll find back in that festering town you left behind.\n\nTheir gods are children, their steel is false protection. You walk the old ways, you wear the pelts of the earth itself. You'll take your share of the treasure, but will you ever walk as one of them? Only time will tell.",
        "damageDice": "1d6",
        "load": 6,
        "hp": 6,
        "alignments": {
          "good": "Help something or someone grow.",
          "evil": "",
          "lawful": "",
          "neutral": "Eliminate an unnatural menace.",
          "chaotic": "Destroy a symbol of civilization."
        },
        "bonds": [
          "__________ smells more like prey than a hunter.",
          "The spirits spoke to me of a great danger that follows __________.",
          "I have showed __________ a secret rite of the Land.",
          "__________ has tasted my blood and I theirs. We are bound by it."
        ],
        "gearChoices": [
          {
            "key": "75b38f75-98d7-4103-aa42-c382383630df",
            "description": "Choose your defenses",
            "selections": [
              {
                "key": "hide_armor",
                "description": "Hide Armor",
                "options": [
                  {
                    "key": "hide_armor",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "hide_armor",
                      "name": "Hide Armor",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "wooden_shield",
                "description": "Wooden Shield",
                "options": [
                  {
                    "key": "wooden_shield",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "wooden_shield",
                      "name": "Wooden Shield",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "a6443bba-30b1-4315-9f12-f07e3b1a3b90",
            "description": "Choose your armament",
            "selections": [
              {
                "key": "shillelagh",
                "description": "Shillelagh",
                "options": [
                  {
                    "key": "shillelagh",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "shillelagh",
                      "name": "Shillelagh",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Coins",
                          "value": 1,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "staff",
                "description": "Staff",
                "options": [
                  {
                    "key": "staff",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "staff",
                      "name": "Staff",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Two_handed",
                          "value": null,
                          "description": "It takes two hands to use it effectively."
                        },
                        {
                          "name": "Coins",
                          "value": 1,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "spear",
                "description": "Spear",
                "options": [
                  {
                    "key": "spear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "spear",
                      "name": "Spear",
                      "description": "",
                      "tags": [
                        {
                          "name": "Reach",
                          "value": null,
                          "description":
                              "It's useful for attacking something that's several feet away-maybe as far as ten."
                        },
                        {
                          "name": "Thrown",
                          "value": null,
                          "description":
                              "Throw it at someone to hurt them. If you Volley with this weapon, you can't choose to mark off ammo on a 7-9; once you throw it, it's gone until you can recover it."
                        },
                        {
                          "name": "Near",
                          "value": null,
                          "description":
                              "It's useful for attacking if you can see the whites of their eyes."
                        },
                        {
                          "name": "Coins",
                          "value": 5,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "12dad8e0-d3db-46b6-a612-0b72a1fed7bd",
            "description": "Choose one",
            "selections": [
              {
                "key": "adventuring_gear",
                "description": "Adventuring Gear",
                "options": [
                  {
                    "key": "adventuring_gear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "adventuring_gear",
                      "name": "Adventuring Gear",
                      "description":
                          "Adventuring gear is a collection of useful mundane items such as chalk, poles, spikes, ropes, etc. When you rummage through your adventuring gear for some useful mundane item, you find what you need and mark off a use.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 20,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "poultices_and_herbs",
                "description": "Poultices and Herbs",
                "options": [
                  {
                    "key": "poultices",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "poultices_and_herbs",
                      "name": "Poultices and Herbs",
                      "description":
                          "When you carefully treat someone's wounds with poultices and herbs, heal them of 7 damage and expend a use.",
                      "tags": [
                        {"name": "Uses", "value": 2, "description": "It can only be used n times."},
                        {
                          "name": "Slow",
                          "value": null,
                          "description": "It takes minutes or more to use."
                        },
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  },
                  {
                    "key": "herbs",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "poultices_and_herbs",
                      "name": "Poultices and Herbs",
                      "description":
                          "When you carefully treat someone's wounds with poultices and herbs, heal them of 7 damage and expend a use.",
                      "tags": [
                        {"name": "Uses", "value": 2, "description": "It can only be used n times."},
                        {
                          "name": "Slow",
                          "value": null,
                          "description": "It takes minutes or more to use."
                        },
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "halfling_pipeleaf",
                "description": "Halfling Pipeleaf",
                "options": [
                  {
                    "key": "halfling_pipeleaf",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "halfling_pipeleaf",
                      "name": "Halfling Pipeleaf",
                      "description":
                          "When you share halfling pipeleaf with someone, expend two uses and take +1 forward to Parley with them.",
                      "tags": [
                        {"name": "Uses", "value": 6, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 5,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "antitoxins",
                "description": "3 Antitoxins",
                "options": [
                  {
                    "key": "antitoxins",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "antitoxin",
                      "name": "Antitoxin",
                      "description":
                          "When you drink antitoxin, you're cured of one poison affecting you.",
                      "tags": [
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 3.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Fighter",
        "key": "fighter",
        "description":
            "It's a thankless job-living day to day by your armor and the skill of your arm. To dive heedlessly into danger. They won't be playing golden horns for the time you took that knife to the ribs for them in the bar in Bucksberg. No flock of angels to sing of the time you dragged them, still screaming, from the edge of the Pits of Madness, no.\n\nForget them.\n\nYou do this for the guts and the glory. The scream of battle and the hot, hot blood of it. You are a beast of iron. Your friends may carry blades of forged steel but, fighter, you are steel. While your traveling companions might moan about their wounds over a campfire in the wilderness, you bear your scars with pride.\n\nYou are the wall-let every danger smash itself to nothing on you. In the end, you'll be the last one standing.",
        "damageDice": "1d10",
        "load": 12,
        "hp": 10,
        "alignments": {
          "good": "Defend those weaker than you.",
          "evil": "Kill a defenseless or surrendered enemy.",
          "lawful": "",
          "neutral": "Defeat a worthy opponent.",
          "chaotic": ""
        },
        "bonds": [
          "__________ owes me their life, whether they admit it or not.",
          "I have sworn to protect __________.",
          "I worry about the ability of __________ to survive in the dungeon.",
          "__________ is soft, but I will make them hard like me."
        ],
        "gearChoices": [
          {
            "key": "d417bac1-dd58-4a6a-993a-dc97c52e9cf9",
            "description": "Choose your defenses",
            "selections": [
              {
                "key": "chainmail",
                "description": "Chainmail",
                "options": [
                  {
                    "key": "chainmail",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "chainmail",
                      "name": "Chainmail",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Worn",
                          "value": null,
                          "description": "To use it, you have to be wearing it."
                        },
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "scale_armor",
                "description": "Scale Armor",
                "options": [
                  {
                    "key": "scale_armor",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "scale_armor",
                      "name": "Scale Armor",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 2,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Worn",
                          "value": null,
                          "description": "To use it, you have to be wearing it."
                        },
                        {
                          "name": "Weight",
                          "value": 3,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "7007f593-73e1-4d08-8b0f-07ed25fe3a78",
            "description": "Choose two",
            "selections": [
              {
                "key": "healing_potions",
                "description": "2 Healing Potions",
                "options": [
                  {
                    "key": "healing_potions",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "healing_potion",
                      "name": "Healing Potion",
                      "description":
                          "When you drink an entire healing potion, heal yourself of 10 damage or remove one debility, your choice.",
                      "tags": [
                        {
                          "name": "Coins",
                          "value": 50,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 2.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "shield",
                "description": "Shield",
                "options": [
                  {
                    "key": "shield",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "shield",
                      "name": "Shield",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Coins",
                          "value": 15,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "antitoxin",
                "description": "Antitoxin",
                "options": [
                  {
                    "key": "antitoxin",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "antitoxin",
                      "name": "Antitoxin",
                      "description":
                          "When you drink antitoxin, you're cured of one poison affecting you.",
                      "tags": [
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {"key": "coins", "description": "22 coins", "options": [], "coins": 22.0}
            ],
            "preselect": [],
            "maxSelections": 2
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Paladin",
        "key": "paladin",
        "description":
            "Hell awaits. An eternity of torment in fire or ice or whatever best suits the sins of the damned throngs of Dungeon World. All that stands between the pits of that grim torture and salvation is you. Holy man, armored war machine, templar of the Good and the Light, right? The cleric may say his prayers at night to the gods, dwelling in their heavens. The fighter may wield his sharp sword in the name of \"good\" but you know. Only you.\n\nEyes, hands, and sweet killing blow of the gods, you are. Yours is the gift of righteousness and virtue. Of justice. Vision, too. A purity of intent that your companions do not have.\n\nSo guide these fools, paladin. Take up your holy cause and bring salvation to the wastrel world.\n\nVae victis, right?",
        "damageDice": "1d10",
        "load": 12,
        "hp": 10,
        "alignments": {
          "good": "Endanger yourself to protect someone weaker than you.",
          "evil": "",
          "lawful": "Deny mercy to a criminal or unbeliever.",
          "neutral": "",
          "chaotic": ""
        },
        "bonds": [
          "__________'s misguided behavior endangers their very soul!",
          "__________ has stood by me in battle and can be trusted completely.",
          "I respect the beliefs of __________ but hope they will someday see the true way.",
          "__________ is a brave soul, I have much to learn from them."
        ],
        "gearChoices": [
          {
            "key": "51e69ccb-5bdb-4e29-8c4e-1152830b9d12",
            "description": "Choose your weapon",
            "selections": [
              {
                "key": "halberd",
                "description": "Halberd",
                "options": [
                  {
                    "key": "halberd",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "halberd",
                      "name": "Halberd",
                      "description": "",
                      "tags": [
                        {
                          "name": "Reach",
                          "value": null,
                          "description":
                              "It's useful for attacking something that's several feet away-maybe as far as ten."
                        },
                        {
                          "name": "Damage",
                          "value": 1,
                          "description":
                              "It is particularly harmful to your enemies. When you deal damage, you add n to it."
                        },
                        {
                          "name": "Two_handed",
                          "value": null,
                          "description": "It takes two hands to use it effectively."
                        },
                        {
                          "name": "Coins",
                          "value": 9,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "long_sword",
                "description": "Long Sword",
                "options": [
                  {
                    "key": "long_sword",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "long_sword",
                      "name": "Long Sword",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Damage",
                          "value": 1,
                          "description":
                              "It is particularly harmful to your enemies. When you deal damage, you add n to it."
                        },
                        {
                          "name": "Coins",
                          "value": 15,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "6caea328-67ae-40b7-849b-3a0c568e7ad2",
            "description": "Choose one",
            "selections": [
              {
                "key": "adventuring_gear",
                "description": "Adventuring Gear",
                "options": [
                  {
                    "key": "adventuring_gear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "adventuring_gear",
                      "name": "Adventuring Gear",
                      "description":
                          "Adventuring gear is a collection of useful mundane items such as chalk, poles, spikes, ropes, etc. When you rummage through your adventuring gear for some useful mundane item, you find what you need and mark off a use.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 20,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "dungeon_rations",
                "description": "Dungeon rations",
                "options": [
                  {
                    "key": "dungeon_rations",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dungeon_rations",
                      "name": "Dungeon Rations",
                      "description": "Not tasty, but not bad either.",
                      "tags": [
                        {
                          "name": "Ration",
                          "value": null,
                          "description": "It's edible, more or less."
                        },
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 3,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Ranger",
        "key": "ranger",
        "description":
            "These city-born folk you travel with. Have they heard the call of the wolf? Felt the winds howl in the bleak deserts of the East? Have they hunted their prey with the bow and the knife like you? Hell no. That's why they need you.\n\nGuide. Hunter. Creature of the wilds. You are these things and more. Your time in the wilderness may have been solitary until now, but the call of some greater thing-call it fate if you like-has cast your lot with these folk. Brave, they may be. Powerful and strong, too. You know the secrets of the spaces between, though.\n\nWithout you, they'd be lost. Blaze a trail through the blood and dark, strider.",
        "damageDice": "1d8",
        "load": 11,
        "hp": 8,
        "alignments": {
          "good": "Endanger yourself to combat an unnatural threat.",
          "evil": "",
          "lawful": "",
          "neutral": "Help an animal or spirit of the wild.",
          "chaotic": "Free someone from literal or figurative bonds."
        },
        "bonds": [],
        "gearChoices": [
          {
            "key": "b81a5df6-2a18-4880-a664-6b07b34f2219",
            "description": "Choose your armament",
            "selections": [
              {
                "key": "hunters_bow_and_short_sword",
                "description": "Hunter's bow and short sword",
                "options": [
                  {
                    "key": "hunters_bow",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "hunters_bow",
                      "name": "hunter's bow",
                      "description": "",
                      "tags": [
                        {
                          "name": "Near",
                          "value": null,
                          "description":
                              "It's useful for attacking if you can see the whites of their eyes."
                        },
                        {
                          "name": "Far",
                          "value": null,
                          "description": "It's useful for attacking something in shouting distance."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  },
                  {
                    "key": "short_sword",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "short_sword",
                      "name": "Short Sword",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Coins",
                          "value": 8,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "hunters_bow_and_spear",
                "description": "Hunter's bow and spear",
                "options": [
                  {
                    "key": "hunters_bow",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "hunters_bow",
                      "name": "hunter's bow",
                      "description": "",
                      "tags": [
                        {
                          "name": "Near",
                          "value": null,
                          "description":
                              "It's useful for attacking if you can see the whites of their eyes."
                        },
                        {
                          "name": "Far",
                          "value": null,
                          "description": "It's useful for attacking something in shouting distance."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  },
                  {
                    "key": "spear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "spear",
                      "name": "Spear",
                      "description": "",
                      "tags": [
                        {
                          "name": "Reach",
                          "value": null,
                          "description":
                              "It's useful for attacking something that's several feet away-maybe as far as ten."
                        },
                        {
                          "name": "Thrown",
                          "value": null,
                          "description":
                              "Throw it at someone to hurt them. If you Volley with this weapon, you can't choose to mark off ammo on a 7-9; once you throw it, it's gone until you can recover it."
                        },
                        {
                          "name": "Near",
                          "value": null,
                          "description":
                              "It's useful for attacking if you can see the whites of their eyes."
                        },
                        {
                          "name": "Coins",
                          "value": 5,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "de3671f1-07c4-486c-8c0f-b0cef5f89056",
            "description": "Choose one",
            "selections": [
              {
                "key": "adventuring_gear",
                "description": "Adventuring Gear",
                "options": [
                  {
                    "key": "adventuring_gear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "adventuring_gear",
                      "name": "Adventuring Gear",
                      "description":
                          "Adventuring gear is a collection of useful mundane items such as chalk, poles, spikes, ropes, etc. When you rummage through your adventuring gear for some useful mundane item, you find what you need and mark off a use.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 20,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "adventuring_gear",
                "description": "Adventuring Gear",
                "options": [
                  {
                    "key": "adventuring_gear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "adventuring_gear",
                      "name": "Adventuring Gear",
                      "description":
                          "Adventuring gear is a collection of useful mundane items such as chalk, poles, spikes, ropes, etc. When you rummage through your adventuring gear for some useful mundane item, you find what you need and mark off a use.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 20,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Thief",
        "key": "thief",
        "description":
            "You've heard them, sitting around the campfire. Bragging about this battle or that. About how their gods are smiling on your merry band. You count your coins and smile to yourself-this is the thrill above all. You alone know the secret of Dungeon World-filthy filthy lucre.\n\nSure, they give you lip for all the times you've snuck off alone but without you, who among them wouldn't have been dissected by a flying guillotine or poisoned straight to death by some ancient needle trap? So, let them complain. When you're done with all this delving you'll toast their hero's graves.\n\nFrom your castle. Full of gold. You rogue.",
        "damageDice": "1d8",
        "load": 9,
        "hp": 6,
        "alignments": {
          "good": "",
          "evil": "Shift danger or blame from yourself to someone else.",
          "lawful": "",
          "neutral": "Avoid detection or infiltrate a location.",
          "chaotic": "Leap into danger without a plan."
        },
        "bonds": [
          "I stole something from __________.",
          "__________ has my back when things go wrong.",
          "__________ knows incriminating details about me.",
          "__________ and I have a con running."
        ],
        "gearChoices": [
          {
            "key": "96787798-9785-4e9a-b07e-4126ad86b100",
            "description": "Choose your arms",
            "selections": [
              {
                "key": "dagger",
                "description": "Dagger",
                "options": [
                  {
                    "key": "dagger",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dagger",
                      "name": "Dagger",
                      "description": "",
                      "tags": [
                        {
                          "name": "Hand",
                          "value": null,
                          "description":
                              "It's useful for attacking something within your reach, no further."
                        },
                        {
                          "name": "Coins",
                          "value": 2,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "rapier",
                "description": "Rapier",
                "options": [
                  {
                    "key": "rapier",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "rapier",
                      "name": "Rapier",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Precise",
                          "value": null,
                          "description":
                              "It rewards careful strikes. You use DEX to Hack & Slash with this weapon, not STR."
                        },
                        {
                          "name": "Coins",
                          "value": 25,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "c4aa2c48-7e1a-4ae0-bfd4-7ad60840f802",
            "description": "Choose a ranged weapon",
            "selections": [
              {
                "key": "throwing_daggers",
                "description": "3 Throwing Daggers",
                "options": [
                  {
                    "key": "throwing_daggers",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "throwing_dagger",
                      "name": "Throwing Dagger",
                      "description": "",
                      "tags": [
                        {
                          "name": "Thrown",
                          "value": null,
                          "description":
                              "Throw it at someone to hurt them. If you Volley with this weapon, you can't choose to mark off ammo on a 7-9; once you throw it, it's gone until you can recover it."
                        },
                        {
                          "name": "Near",
                          "value": null,
                          "description":
                              "It's useful for attacking if you can see the whites of their eyes."
                        },
                        {
                          "name": "Coins",
                          "value": 1,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 3.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "ragged_bow",
                "description": "Ragged Bow",
                "options": [
                  {
                    "key": "ragged_bow",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "ragged_bow",
                      "name": "Ragged Bow",
                      "description": "",
                      "tags": [
                        {
                          "name": "Near",
                          "value": null,
                          "description":
                              "It's useful for attacking if you can see the whites of their eyes."
                        },
                        {
                          "name": "Coins",
                          "value": 15,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "9158bdba-2040-4f00-80c3-5ad4b7dfb179",
            "description": "Choose one",
            "selections": [
              {
                "key": "adventuring_gear",
                "description": "Adventuring Gear",
                "options": [
                  {
                    "key": "adventuring_gear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "adventuring_gear",
                      "name": "Adventuring Gear",
                      "description":
                          "Adventuring gear is a collection of useful mundane items such as chalk, poles, spikes, ropes, etc. When you rummage through your adventuring gear for some useful mundane item, you find what you need and mark off a use.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 20,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "healing_potion",
                "description": "Healing Potion",
                "options": [
                  {
                    "key": "healing_potion",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "healing_potion",
                      "name": "Healing Potion",
                      "description":
                          "When you drink an entire healing potion, heal yourself of 10 damage or remove one debility, your choice.",
                      "tags": [
                        {
                          "name": "Coins",
                          "value": 50,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Wizard",
        "key": "wizard",
        "description":
            "Dungeon World has rules. Not the laws of men or the rule of some petty tyrant. Bigger, better rules. You drop something-it falls. You can't make something out of nothing. The dead stay dead, right?\n\nOh, the things we tell ourselves to feel better about the long, dark nights.\n\nYou've spent so very long poring over those tomes of yours. The experiments that nearly drove you mad and all the botched summonings that endangered your very soul. For what? For power. What else is there? Not just the power of King or Country but the power to boil a man's blood in his veins. To call on the thunder of the sky and the churn of the roiling earth. To shrug off the rules the world holds so dear.\n\nLet them cast their sidelong glances. Let them call you \"warlock\" or \"diabolist.\" Who among them can hurl fireballs from their eyes?\n\nYeah. We didn't think so.",
        "damageDice": "1d4",
        "load": 7,
        "hp": 4,
        "alignments": {
          "good": "Use magic to directly aid another.",
          "evil": "Use magic to cause terror and fear.",
          "lawful": "",
          "neutral": "Discover something about a magical mystery.",
          "chaotic": ""
        },
        "bonds": [
          "__________ will play an important role in the events to come. I have foreseen it!",
          "__________ is keeping an important secret from me.",
          "__________ is woefully misinformed about the world; I will teach them all that I can."
        ],
        "gearChoices": [
          {
            "key": "f0807b81-5678-4553-8548-0788992acf10",
            "description": "Choose your defenses",
            "selections": [
              {
                "key": "leather_armor",
                "description": "Leather Armor",
                "options": [
                  {
                    "key": "leather_armor",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "leather_armor",
                      "name": "Leather Armor",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Worn",
                          "value": null,
                          "description": "To use it, you have to be wearing it."
                        },
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "bag_of_books",
                "description": "Bag of Books",
                "options": [
                  {
                    "key": "bag_of_books",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "bag_of_books",
                      "name": "Bag of Books",
                      "description":
                          "When your bag of books contains just the right book for the subject you're spouting lore on, consult the book, mark off a use, and take +1 to your roll.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "8031df0e-da42-4aa4-af08-cecb72bcd1ae",
            "description": "Choose your weapon",
            "selections": [
              {
                "key": "dagger",
                "description": "Dagger",
                "options": [
                  {
                    "key": "dagger",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dagger",
                      "name": "Dagger",
                      "description": "",
                      "tags": [
                        {
                          "name": "Hand",
                          "value": null,
                          "description":
                              "It's useful for attacking something within your reach, no further."
                        },
                        {
                          "name": "Coins",
                          "value": 2,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "staff",
                "description": "Staff",
                "options": [
                  {
                    "key": "staff",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "staff",
                      "name": "Staff",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Two_handed",
                          "value": null,
                          "description": "It takes two hands to use it effectively."
                        },
                        {
                          "name": "Coins",
                          "value": 1,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "e60a4196-26f4-4ee5-9b8e-a5f87f20f234",
            "description": "Choose one",
            "selections": [
              {
                "key": "healing_potion",
                "description": "Healing Potion",
                "options": [
                  {
                    "key": "healing_potion",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "healing_potion",
                      "name": "Healing Potion",
                      "description":
                          "When you drink an entire healing potion, heal yourself of 10 damage or remove one debility, your choice.",
                      "tags": [
                        {
                          "name": "Coins",
                          "value": 50,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "antitoxins",
                "description": "3 Antitoxins",
                "options": [
                  {
                    "key": "antitoxins",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "antitoxin",
                      "name": "Antitoxin",
                      "description":
                          "When you drink antitoxin, you're cured of one poison affecting you.",
                      "tags": [
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 3.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Immolator",
        "key": "immolator",
        "description": "",
        "damageDice": "1d8",
        "load": 9,
        "hp": 4,
        "alignments": {
          "good": "",
          "evil": "Sacrifice an unwilling victim to the flames.",
          "lawful": "",
          "neutral": "Exchange a sacrifice, freely given, for a service rendered.",
          "chaotic": "Spread a dangerous new idea"
        },
        "bonds": [
          "__________ has felt the hellish touch of fire, now they know my strength.",
          "I will teach __________ the true meaning of sacrifice.",
          "I cast something into the fire for __________ and still owe them their due."
        ],
        "gearChoices": [
          {
            "key": "76316345-ccad-43e2-b0f4-fc0e51fbf50b",
            "description":
                "You carry no weapon and need no armor but the flames the burn within you. Choose two:",
            "selections": [
              {
                "key": "dungeon_rations",
                "description": "Dungeon Rations",
                "options": [
                  {
                    "key": "dungeon_rations",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dungeon_rations",
                      "name": "Dungeon Rations",
                      "description": "Not tasty, but not bad either.",
                      "tags": [
                        {
                          "name": "Ration",
                          "value": null,
                          "description": "It's edible, more or less."
                        },
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 3,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "healing_potion",
                "description": "1 Healing Potion",
                "options": [
                  {
                    "key": "healing_potion",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "healing_potion",
                      "name": "Healing Potion",
                      "description":
                          "When you drink an entire healing potion, heal yourself of 10 damage or remove one debility, your choice.",
                      "tags": [
                        {
                          "name": "Coins",
                          "value": 50,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {"key": "coins", "description": "10 coins", "options": [], "coins": 10.0}
            ],
            "preselect": [],
            "maxSelections": 2
          }
        ]
      }),
      CharacterClass.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "name": "Barbarian",
        "key": "barbarian",
        "description": "",
        "damageDice": "1d10",
        "load": 8,
        "hp": 8,
        "alignments": {
          "good": "",
          "evil": "",
          "lawful": "",
          "neutral": "Teach someone the ways of your people.",
          "chaotic": "You eschew a convention of the civilized world."
        },
        "bonds": [
          "______________________ is puny and foolish, but amusing to me.",
          "______________________ 's ways are strange and confusing.",
          "______________________ is always getting into trouble - I must protect them from themselves.",
          "______________________ shares my hunger for glory; the earth will tremble at our passing!"
        ],
        "gearChoices": [
          {
            "key": "7b819c33-10da-41ae-b31e-fa48c39b4cdd",
            "description":
                "You carry dungeon rations (5 uses, 1 weight), a dagger (hand, 1 weight) some token of where you've traveled or where you're from",
            "selections": [
              {
                "key": "dungeon_rations",
                "description": "Dungeon Rations",
                "options": [
                  {
                    "key": "dungeon_rations",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dungeon_rations",
                      "name": "Dungeon Rations",
                      "description": "Not tasty, but not bad either.",
                      "tags": [
                        {
                          "name": "Ration",
                          "value": null,
                          "description": "It's edible, more or less."
                        },
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 3,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "dagger",
                "description": "Dagger",
                "options": [
                  {
                    "key": "dagger",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dagger",
                      "name": "Dagger",
                      "description": "",
                      "tags": [
                        {
                          "name": "Hand",
                          "value": null,
                          "description":
                              "It's useful for attacking something within your reach, no further."
                        },
                        {
                          "name": "Coins",
                          "value": 2,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "token_of_origin",
                "description": "Token Of Origin",
                "options": [
                  {
                    "key": "token_of_origin",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "token_of_origin",
                      "name": "Token Of Origin",
                      "description": "A token of where you've traveled or where you're from.",
                      "tags": [
                        {
                          "name": "Weight",
                          "value": 0,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [-1],
            "maxSelections": null
          },
          {
            "key": "dbb50c21-6f20-44d5-8c4f-68bc77e7bc77",
            "description": "Choose a weapon",
            "selections": [
              {
                "key": "axe",
                "description": "Axe",
                "options": [
                  {
                    "key": "axe",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "axe",
                      "name": "Axe",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Coins",
                          "value": 8,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "two_handed_sword",
                "description": "Two handed sword",
                "options": [
                  {
                    "key": "two_handed_sword",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "two_handed_sword",
                      "name": "Two Handed Sword",
                      "description": "",
                      "tags": [
                        {
                          "name": "Close",
                          "value": null,
                          "description":
                              "It's useful for attacking something at arm's reach plus a foot or two."
                        },
                        {
                          "name": "Damage",
                          "value": 1,
                          "description":
                              "It is particularly harmful to your enemies. When you deal damage, you add n to it."
                        },
                        {
                          "name": "Coins",
                          "value": 15,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 2,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          },
          {
            "key": "fe326cb4-fa3f-4e16-830a-216280ef039d",
            "description": "Choose one",
            "selections": [
              {
                "key": "adventuring_gear_and_dungeon_rations",
                "description": "Adventuring gear and dungeon rations",
                "options": [
                  {
                    "key": "adventuring_gear",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "adventuring_gear",
                      "name": "Adventuring Gear",
                      "description":
                          "Adventuring gear is a collection of useful mundane items such as chalk, poles, spikes, ropes, etc. When you rummage through your adventuring gear for some useful mundane item, you find what you need and mark off a use.",
                      "tags": [
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 20,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  },
                  {
                    "key": "dungeon_rations",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "dungeon_rations",
                      "name": "Dungeon Rations",
                      "description": "Not tasty, but not bad either.",
                      "tags": [
                        {
                          "name": "Ration",
                          "value": null,
                          "description": "It's edible, more or less."
                        },
                        {"name": "Uses", "value": 5, "description": "It can only be used n times."},
                        {
                          "name": "Coins",
                          "value": 3,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              },
              {
                "key": "chainmail",
                "description": "Chainmail",
                "options": [
                  {
                    "key": "chainmail",
                    "item": {
                      "_meta": {"language": "EN", "createdBy": "__repo__"},
                      "key": "chainmail",
                      "name": "Chainmail",
                      "description": "",
                      "tags": [
                        {
                          "name": "Armor",
                          "value": 1,
                          "description":
                              "It protects you and stacks with other armor. Add its value to your total armor."
                        },
                        {
                          "name": "Worn",
                          "value": null,
                          "description": "To use it, you have to be wearing it."
                        },
                        {
                          "name": "Coins",
                          "value": 10,
                          "description":
                              "How much it costs to buy, normally. If the cost includes \"-Charisma\" a little negotiation subtracts the haggler's Charisma score (not modifier) from the price."
                        },
                        {
                          "name": "Weight",
                          "value": 1,
                          "description":
                              "Count the listed amount against your load. Something with no listed weight isn't designed to be carried. 100 coins in standard denominations is 1 weight. The same value in gems or fine art may be lighter or heavier."
                        }
                      ]
                    },
                    "amount": 1.0
                  }
                ],
                "coins": 0.0
              }
            ],
            "preselect": [],
            "maxSelections": 1
          }
        ]
      })
    ];
