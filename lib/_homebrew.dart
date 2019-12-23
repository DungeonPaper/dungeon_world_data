import 'package:dungeon_world_data/alignment.dart';
import 'package:dungeon_world_data/gear_choice.dart';
import 'package:dungeon_world_data/move.dart';
import 'package:dungeon_world_data/player_class.dart';
import 'package:dungeon_world_data/dice.dart';
import 'package:dungeon_world_data/tag.dart';
import 'package:dungeon_world_data/_cache.dart';

void initHomebrew() {
  playerClassList.add(PlayerClass(
    key: 'immolator',
    name: 'Immolator',
    description: '',
    load: 9,
    baseHP: 6,
    damage: Dice.parse('1d6'),
    names: {
      'human': [
        'Solomon',
        'Timothy',
        'Kalil',
        'Omen',
        'Yohn',
        'Hiko',
        'Agasha',
        'Elizabeth',
        'Harald',
        'Fatia',
        'Khalwa',
        'Adur',
        'Ignis',
        'Yajna',
        'Umlilo',
      ],
      'salamander': [
        'Sulfurheart',
        'Emberlash',
        'Flamewalker',
        'Cinderclaw',
        'Charfiend',
        'Bittertallow',
        'Barrowblaze',
        'Singescale',
        'Candlewick',
        'Coalfang',
      ]
    },
    bonds: [
      '__________ has felt the hellish touch of fire, now they know my strength.',
      'I will teach __________ the true meaning of sacrifice.',
      'I cast something into the fire for __________ and still owe them their due.'
    ],
    looks: [
      ['Smoldering eyes', 'Warm eyes', 'Searing eyes'],
      ['Strange brands', 'Ritual scars', 'Perfect skin'],
      ['Imperious bearing', 'Manic attitude', 'Barely-hidden rage'],
      ['Crackling voice', 'Whispering voice', 'Roaring voice']
    ],
    alignments: {
      'evil': Alignment(
        key: 'evil',
        name: 'Evil',
        description: 'Sacrifice an unwilling victim to the flames.',
      ),
      'chaotic': Alignment(
        key: 'chaotic',
        name: 'Chaotic',
        description: 'Spread a dangerous new idea',
      ),
      'neutral': Alignment(
        key: 'neutral',
        name: 'Neutral',
        description:
            'Exchange a sacrifice, freely given, for a service rendered.',
      )
    },
    raceMoves: [
      Move(
        key: 'salamander',
        name: 'Salamander',
        description: 'Non-magical heat and fire cannot harm you.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'human',
        name: 'Human',
        description:
            'When you Make Camp next to a large, open flame, regain all of your HP.',
        explanation: null,
        classes: ['immolator'],
      )
    ],
    startingMoves: [
      Move(
        key: 'burning_brand',
        name: 'Burning Brand',
        description:
            'When you conjure a weapon of pure flame, roll+CON. On a 10+ choose two of the following tags, on a 7-9 choose one. You may treat your INT as your STR or DEX in regards to making attacks with this weapon. The weapon always begins with the fiery, touch, dangerous, and 3 uses tags. Each attack with the weapon consumes one use.\n\n\n\n- hand\n\n- thrown, near\n\n- +1 damage\n\n- remove the dangerous tag',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'fighting_fire_with_fire',
        name: 'Fighting Fire With Fire',
        description:
            'When you take damage, and that damage is odd (after armor) the flames within you come to your aid. Roll 1d4 and either add that many uses to your burning brand (if active), take that result forward to summon your burning brand, or reduce the damage by that amount, your choice.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'zuko_style',
        name: 'Zuko Style',
        description:
            'When you bend a flame to your will, roll+WIS. On a 10+ it does as you command, taking the shape and movement you desire for as long as it has fuel on which to burn. On a 7-9 the effect is short-lived, lasting only a moment.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'give_me_fuel_give_me_fire',
        name: 'Give Me Fuel Give Me Fire',
        description:
            'When you **gaze intensely into someone eyes**, you may ask their player “what fuels the flames of your desire?” they’ll answer with the truth, even if the character does not know or would otherwise keep this hidden.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'hand_crafted',
        name: 'Hand Crafted',
        description:
            'You may use your hands in place of tools and fire to craft metal objects. Mundane weapons, armor and metal jewelry can all be formed from their raw components. You may unmake these things, as well, but to do so without time and safety might require that you Defy Danger first.',
        explanation: null,
        classes: ['immolator'],
      )
    ],
    advancedMoves1: [
      Move(
        key: 'lore_of_flame',
        name: 'Lore of Flame',
        description:
            'When you **stare into a source of fire, looking for answers**, roll+WIS On a hit, the GM will tell you something new and interesting about the current situation. On a 10+, the GM will give you good detail. On a 7–9, the GM will give you an impression. If you already know all there is to know, the GM will tell you that.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'burns_twice_as_bright',
        name: 'Burns Twice As Bright',
        description:
            'When you **channel the flames of fate**, you may treat a missed roll as a 7-9 or a 7-9 result as a 10+. This may be a roll you or another character has made. Tell the GM something you’ve lost; an emotion, a memory or some innate piece of your being. You may not use this move again until you’ve used Burns Half As Long.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'burns_half_as_long',
        name: 'Burns Half As Long',
        description:
            'You gain this move when you gain Burns Twice as Bright.\n\n\n\nWhen you sacrifice a victory to the flames of fate, treat any roll of 10+ as a miss.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'this_killing_fire',
        name: 'This Killing Fire',
        description:
            'Add the following tags to your options for Burning Brand: **messy, forceful, reach, near, far**',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'a_little_help_from_my_friends',
        name: 'A Little Help From My Friends',
        description:
            'When you successfully aid someone you take +1 forward as well.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'firebrand',
        name: 'Firebrand',
        description:
            'When you **introduce a new idea to an NPC**, roll+CHA. On a 10+ They believe the idea to be their own and take to it with fervor On a 7-9, Their passion fades after a day or two. On a miss, they respond negatively, speaking out against the idea.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'ogdru_jahad',
        name: 'Ogdru Jahad',
        description:
            'Gain the Wizard move Ritual. The GM will always tell you what you have to sacrifice to gain the effect you desire.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'moth_to_the_flame',
        name: 'Moth To The Flame',
        description:
            'When you tempt a weak mind with your inner fire, roll+WIS. On a 10+ their will is suppressed, they’ll follow you and do as you desire, so long as nothing startles or surprises them. On a 7-9, the effect is only strong enough to distract or confuse them. On a miss, they become agitated and upset, your fire having sparked their hidden desires.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'burning_bridges',
        name: 'Burning Bridges',
        description:
            'When you would take your last breath, don’t. Instead, you may erase one of your Bonds. This is permanent and lowers your total available Bonds forever. You are alive and have 1d6 hp. If you have no more Bonds, take your last breath as normal.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'the_enkindler',
        name: 'The Enkindler',
        description:
            'When you bolster the courage of others roll+CHA. On a 10+ they shake off all fear and doubt, becoming brave in an instant. On a 7-9, this effect is fleeting, they realize its superficiality and resort to cowardice after a moment or two. On a miss, they’re cowed or terrified by your presence.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'sick_burn',
        name: 'Sick Burn',
        description:
            'When you insult an NPC, roll + CHA. On a 10+ you leave them no room to react, they bear your insult and the scorn of all who hear it. On a 7-9 you cross a line, they will have their revenge, someday. On a miss you’ve gone too far, they blow up here and now.',
        explanation: null,
        classes: ['immolator'],
      ),
    ],
    advancedMoves2: [
      Move(
        key: 'from_hell_s_heart',
        name: "From Hell's Heart",
        description:
            'Whenever you summon fire with any of your moves, you can replace it with the black fires of hell itself. This fire does not burn with heat and ignores armor, scorching the soul itself. Those creatures without souls cannot be harmed by this type of flame.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'burning_ring_of_fire',
        name: 'Burning Ring Of Fire',
        description:
            'When you **fuse a willing person’s soul to yours**, roll+CHA. On a hit you are bound together, able to sense each other at any distance, as well as sharing your emotional state. On a 7-9, the connection is unstable and dangerous, when you take a debility, so do they (and vice versa). On a miss, the branding is rejected and you both erase any Bonds you have to each other. You may write new Bonds with them at the End of Session as usual. This fusion, once performed, cannot be undone by mortal means.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'fanning_the_flame',
        name: 'Fanning The Flame',
        description:
            'You may apply the effects of your Firebrand move to a group of people – a dozen or so – all at once.',
        explanation: null,
        classes: ['immolator'],
      ),
      Move(
        key: 'watch_the_world_burn',
        name: 'Watch the World Burn',
        description:
            'When you **open a channel to the burning planes and call a firestorm**, tell the GM what you’re sacrificing and roll+WIS. The sky opens up and fire pours like rain from it within an area about equal to a small village. Everyone and everything in the area takes damage as appropriate. On a 10+ you can extinguish the storm with a little effort. On a 7-9 the fires rage out of your control, spreading and gusting where they are carried by wind and weather. On a miss, something cruel, intelligent and hungry comes with the storm.',
        explanation: null,
        classes: ['immolator'],
      )
    ],
    spells: [],
    gearChoices: [
      GearChoice(
        key: '76316345-ccad-43e2-b0f4-fc0e51fbf50b',
        label:
            'You carry no weapon and need no armor but the flames the burn within you. Choose two:',
        gearOptions: [
          GearOption(
            key: 'dungeon_rations',
            name: 'Dungeon Rations',
            tags: [Tag.fromJSON('{uses: 5}'), Tag.fromJSON('{weight: 1}')],
          ),
          GearOption(
            key: 'healing_potion',
            name: '1 Healing Potion',
            tags: [Tag.fromJSON('{weight: 0}')],
          ),
          GearOption(
            key: 'coins',
            name: '10 coins',
            tags: [],
          )
        ],
      )
    ],
  ));
  playerClassList.add(PlayerClass(
    key: 'barbarian',
    name: 'Barbarian',
    description: '',
    load: 8,
    baseHP: 8,
    damage: Dice.parse('1d10'),
    names: {
      'outsider': [
        'Gorm',
        'Si-Yi',
        'Priscilla',
        'Sen',
        'Xia',
        'Anneira',
        'Haepha',
        'Lur',
        'Shar',
        'Korrin',
        'Nkosi',
        'Fafnir',
        'Qua',
        'Sacer',
        'Vercin’geto',
        'Barbozar',
        'Clovis',
        'Frael',
        'Thra raxes',
        'Sillius',
        'Sha Sheena',
        'Khamisi',
      ]
    },
    bonds: [
      '______________________ is puny and foolish, but amusing to me.',
      "______________________ 's ways are strange and confusing.",
      '______________________ is always getting into trouble - I must protect them from themselves.',
      '______________________ shares my hunger for glory; the earth will tremble at our passing!'
    ],
    looks: [
      ['Tormented eyes', 'Haunted eyes', 'Wild eyes', 'Shrouded eyes'],
      ['Mighty thews', 'Long shanks', 'Scrawny body', 'Supple body'],
      ['Strange tattoos', 'Unusual jewelry', 'Unmarred by decoration'],
      ['Scraps', 'Silks', "Scavenger's outfit", 'Weather inappropriate clothes']
    ],
    alignments: {
      'chaotic': Alignment(
        key: 'chaotic',
        name: 'Chaotic',
        description: 'You eschew a convention of the civilized world.',
      ),
      'neutral': Alignment(
        key: 'neutral',
        name: 'Neutral',
        description: 'Teach someone the ways of your people.',
      )
    },
    raceMoves: [
      Move(
        key: 'outsider',
        name: 'Outsider',
        description:
            'You may be elf, dwarf, halfling, or human, but you and your people are not from around here. At the beginning of each session, the GM will ask you something about your homeland, why you left, or what you left behind. If you answer them, mark XP.',
        explanation: null,
        classes: ['barbarian'],
      )
    ],
    startingMoves: [
      Move(
        key: 'herculean_appetites',
        name: 'Herculean Appetites',
        description:
            'Others may content themselves with just a taste of wine, or dominion over a servant or two, but you want more. Choose two appetites. While pursuing one of your appetites if you would roll for a move, instead of rolling 2d6 you roll 1d6+1d8. If the d6 is the higher die of the pair, the GM will also introduce a complication or danger that comes about due to your heedless pursuits.\n\n* Pure destruction\n* Power over others\n* Mortal pleasures\n* Conquest\n* Riches and property\n* Fame and glory',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'the_upper_hand',
        name: 'The Upper Hand',
        description:
            'You take +1 ongoing to last breath rolls. When you take your last breath, on a 7–9 you make an offer to Death in return for your life. If Death accepts he will return you to life. If not, you die.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'musclebound',
        name: 'Musclebound',
        description:
            'While you wield a weapon it gains the forceful and messy tags.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'what_are_you_waiting_for',
        name: 'What Are You Waiting For?',
        description:
            'When you cry out a challenge to your enemies, roll+Con.\n\n* On a 10+ they treat you as the most obvious threat to be dealt with and ignore your companions, take +2 damage ongoing against them.\n* On a 7–9 only a few (the weakest or most foolhardy among them) fall prey to your taunting.\n\nIn addition, choose one of the moves "Full Plate and Packing Steel" or "Unencumbered, Unharmed" to start with.',
        explanation: null,
        classes: ['barbarian'],
      )
    ],
    advancedMoves1: [
      Move(
        key: 'full_plate_and_packing_steel',
        name: 'Full Plate and Packing Steel',
        description: 'You ignore the clumsy tag on armor you wear.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'unencumbered_unharmed',
        name: 'Unencumbered, Unharmed',
        description:
            'So long as you are below your Load and neither wear armor nor carry a shield, take +1 armor.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'still_hungry',
        name: 'Still Hungry',
        description: 'Choose an additional appetite.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'appetite_for_destruction',
        name: 'Appetite for Destruction',
        description:
            'Take a move from the fighter, bard or thief class list. You may not take multiclass moves from those classes.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'my_love_for_you_is_like_a_truck',
        name: 'My Love For You Is Like a Truck',
        description:
            'When you perform a feat of strength, name someone present whom you have impressed and take +1 forward to parley with them.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'what_is_best_in_life',
        name: 'What Is Best In Life',
        description:
            'At the end of a session, if during this session you have crushed your enemies, seen them driven before you, or have heard the lamentations of their kinfolk mark XP.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'wide_wanderer',
        name: 'Wide Wanderer',
        description:
            'You’ve traveled the wide world over. When you arrive someplace ask the GM about any important traditions, rituals, and so on, they’ll tell you what you need to know.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'usurper',
        name: 'Usurper',
        description:
            'When you prove yourself superior to a person in power, take +1 forward with their followers, underlings, and hangers on.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'hirelings',
        name: 'Hirelings',
        description:
            'Your hirelings always accept the gratuitous fulfillment of one of your appetites as payment.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'samson',
        name: 'Samson',
        description:
            'You may take a debility to immediately break free of any physical or mental restraint.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'smash',
        name: 'Smash!',
        description:
            'When you hack and slash, on a 12+ deal your damage and choose something physical your target has (a weapon, their position, a limb): they lose it.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'indestructible_hunger',
        name: 'Indestructible Hunger',
        description:
            'When you take damage you can choose to take 1 ongoing until you sate one of your appetites instead of taking the damage. If you already have this penalty you cannot choose this option.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'eye_for_weakness',
        name: 'Eye For Weakness',
        description:
            'When you discern realities add “What here is weak or vulnerable?” to the list of questions you can ask.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'one_the_move',
        name: 'One The Move',
        description:
            'When you defy a danger caused by movement (maybe falling off a narrow bridge or rushing past an armed guard) take +1.\n\nWhen you gain a level from 6–10, choose from these moves or the level 2–5 moves.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'a_good_day_to_die',
        name: 'A Good Day To Die',
        description:
            'As long as you have less than your Con in current HP (or 1, whichever is higher) take +1 ongoing.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'kill_em_all',
        name: "Kill 'Em All",
        description:
            '**Requires:** Appetite for Destruction\n\nTake another move from the fighter, bard or thief class list. You may not take multiclass moves from those classes.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'war_cry',
        name: 'War Cry',
        description:
            'When you enter battle with a show of force (a shout, a rallying cry, a battle dance) roll+Cha.\n\n* On a 10+ both,\n	* On a 7–9 one or the other.\n	* Your allies are rallied and take +1 forward\n	* Your enemies feel fear and act accordingly (avoiding you, hiding, attacking with fear driven abandon)',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'mark_of_might',
        name: 'Mark Of Might',
        description:
            'When you take this move and spend some uninterrupted time reflecting on your past glories you may mark yourself with a symbol of your power (a long braid tied with bells, ritual scars or tattoos, etc.) Any intelligent mortal creature who sees this symbol knows instinctively that you are a force to be reckoned with and treats you appropriately.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'more_always_more',
        name: 'More! Always More!',
        description:
            'When you satisfy an appetite to the extreme (destroying something unique and significant, gaining enormous fame, riches, power, etc.) you may choose to resolve it. Cross it off the list and mark XP. While you may pursue that appetite again, you no longer feel the burning desire you once did. In its place, choose a new appetite from the list or write your own.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'the_one_who_knocks',
        name: 'The One Who Knocks',
        description:
            'When you defy danger, on a 12+ you turn the danger back on itself, the GM will describe how.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'healthy_distrust',
        name: 'Healthy Distrust',
        description:
            'Whenever the unclean magic wielded by mortal men causes you to defy danger, treat any result of 6 as a 7–9.',
        explanation: null,
        classes: ['barbarian'],
      ),
      Move(
        key: 'for_the_blood_god',
        name: 'For The Blood God',
        description:
            'You are initiated in the old ways, the ways of sacrifice. Choose something your gods (or the ancestor spirits, or your totem, etc) value—gold, blood, bones or the like. When you sacrifice those things as per your rites and rituals, roll+Wis.\n\n* On a 10+ the GM will grant you insight into your current trouble or a boon to help you.\n* On a 7–9 the sacrifice is not enough and your gods take of your flesh as well, but still grant you some insight or boon.\n* On a miss, you earn the ire of the fickle spirits.',
        explanation: null,
        classes: ['barbarian'],
      ),
    ],
    advancedMoves2: [],
    spells: [],
    gearChoices: [
      GearChoice(
        key: 'dbb50c21-6f20-44d5-8c4f-68bc77e7bc77',
        label:
            'Your Load is 8+Str. You carry dungeon rations (5 uses, 1 weight), a dagger (hand, 1 weight) some token of where you’ve traveled or where you’re from, and your choice of weapon:',
        gearOptions: [
          GearOption(
            key: 'axe',
            name: 'Axe',
            tags: [Tag.fromJSON('close'), Tag.fromJSON('{weight:1}')],
          ),
          GearOption(
            key: 'two_handed_sword',
            name: 'Two handed sword',
            tags: [
              Tag.fromJSON('close'),
              Tag.fromJSON('{weight:2}'),
              Tag.fromJSON('{damage:1}')
            ],
          )
        ],
      ),
      GearChoice(
        key: 'fe326cb4-fa3f-4e16-830a-216280ef039d',
        label: 'Choose one:',
        gearOptions: [
          GearOption(
            key: 'adventuring_gear_and_dungeon_rations',
            name: 'Adventuring gear and dungeon rations',
            tags: [Tag.fromJSON('{weight:2}'), Tag.fromJSON('{uses:5}')],
          ),
          GearOption(
            key: 'chainmail',
            name: 'Chainmail',
            tags: [Tag.fromJSON('{weight:1}'), Tag.fromJSON('{armor:1}')],
          )
        ],
      )
    ],
  ));
}
