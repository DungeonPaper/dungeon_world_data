import 'package:dungeon_world_data/move.dart';

List<Move> getMoveList() => [
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "hack_slash",
        "name": "Hack & Slash",
        "description":
            "When you **attack an enemy in melee**, roll+Str.\n* On a 10+ you deal your damage to the enemy and avoid their attack. At your option, you may choose to do +1d6 damage but expose yourself to the enemy's attack.\n* On a 7-9, you deal your damage to the enemy and the enemy makes an attack against you.",
        "explanation": "",
        "dice": ["2d6+STR", "1d6"],
        "classKeys": [],
        "tags": [],
        "category": "basic"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "defy_danger",
        "name": "Defy Danger",
        "description":
            "When you act despite an imminent threat or suffer a calamity, say how you deal with it and roll. If you do it...\n\n * by powering through, +Str\n * by getting out of the way or acting fast, +Dex\n * by enduring, +Con\n * with quick thinking, +Int\n * through mental fortitude, +Wis\n * sing charm and social grace, +Cha\n\nOn a 10+, you do what you set out to, the threat doesn't come to bear.\n\nOn a 7-9, you stumble, hesitate, or flinch: the GM will offer you a worse outcome, hard bargain, or ugly choice.",
        "explanation": "",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "basic"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "defend",
        "name": "Defend",
        "description":
            "When you stand in defense of a person, item, or location under attack, roll+Con.\n* On a 10+, hold 3.\n* On a 7-9, hold 1. So long as you stand in defense, when you or the thing you defend is attacked you may spend hold, 1 for 1, to choose an option:\n\n * Redirect an attack from the thing you defend to yourself\n * Halve the attack's effect or damage\n * Open up the attacker to an ally giving that ally +1 forward against the attacker\n * Deal damage to the attacker equal to your level",
        "explanation":
            "Defending something means standing nearby and focusing on preventing attacks against that thing or stopping anyone from getting near it. When you're no longer nearby or you stop devoting your attention to incoming attacks then you lose any hold you might have had.\n\nYou can only spend hold when someone makes an attack on you or the thing you're defending. The choices you can make depend on the attacker and the type of attack. In particular, you can't deal damage to an attacker who you can't reach with your weapon.\n\nAn attack is any action you can interfere with that has harmful effects. Swords and arrows are attacks, of course, but so are spells, grabs, and charges.\n\nIf the attack doesn't deal damage then halving it means the attacker gets some of what they want but not all of it. It's up to you and the GM to work out what that means depending on the circumstances. If you're defending the Gem Eye of Oro-Uht and an orc tries to grab it from its pedestal then half effect might mean that the gem gets knocked to the floor but the orc doesn't get his hands on it, yet. Or maybe the orc gets a hold of it but so do you-now you're both fighting over it, tooth and nail. If you and the GM can't agree on a halved effect you can't choose that option.\n\nDefending yourself is certainly an option. It amounts to giving up on making attacks and just trying to keep yourself safe.\n\n> GM: Avon, you begin weaving the spell to push the necromancer's ghost back through the gates but the zombies are bearing down on you.\n>\n> Lux: Don't worry, squishy Avon, I will save you. While Avon casts his spell, I swear to protect him-I slam my hammer on my shield and yell \"If you want to stop him, you'll have to come through me.\" I'd like to defend Avon.\n>\n> GM: And with such gusto, too. Roll+Con.\n>\n> Lux: I get an 11, three hold, right?\n>\n> Avon: Better get ready to use it, Lux. I got an 8 on my spellcasting roll-I choose to put myself in danger.\n>\n> GM: Of course you do. The zombies are drawn by the magical disturbance, lurching toward you on the attack. Suddenly, you're swarmed by them, they're everywhere! What do you do?\n>\n> Avon: Squeak helplessly?\n>\n> Lux: I'm on it. I spend a point of my hold to redirect the attack to me-I shove Avon aside and let the full fury of my goodness spill out in waves, angering the undead. To be safe, I'm going to whip my hammer in an arc and deal my damage. I might as well use it all up and reduce the damage by half. My god protects us!\n>\n> GM: So, Hadrian, you've been defending Durga while she heals Willem, but now Willem is better. What do you do?\n>\n> Durga: I leap forward to drive back the troglodytes!\n>\n> Hadrian: I want to tangle with this crocodilian.\n>\n> GM: Okay, Durga, the trogs come at you with their clubs.\n>\n> Hadrian: No way, I still have hold left over, I want to spend it to redirect that attack to myself.\n>\n> GM: You two are spread out, now. How are you going to do that if you're 20 yards away? You lost your hold when you attacked the croc, my friend.\n>\n> Hadrian: Yeah, I guess I'm not \"standing in defense\" anymore. Forget it, you're on your own, Durga!",
        "dice": ["2d6+CON"],
        "classKeys": [],
        "tags": [],
        "category": "basic"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "volley",
        "name": "Volley",
        "description":
            "When you take aim and **shoot at an enemy at range**, roll+Dex.\n* On a 10+ you have a clear shot-deal your damage.\n* On a 7-9, choose one (whichever you choose you deal your damage):\n\n \t* You have to move to get the shot placing you in danger of the GM's choice\n\t* You have to take what you can get: -1d6 damage\n\t* You have to take several shots, reducing your ammo by one.",
        "explanation": "",
        "dice": ["2d6+DEX", "1d6"],
        "classKeys": [],
        "tags": [],
        "category": "basic"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "discern_realities",
        "name": "Discern Realities",
        "description":
            "When you **closely study a situation or person**, roll+Wis.\n* On a 10+ ask the GM three questions from the list below.\n* On a 7-9 ask only one. Take +1 forward when acting on the answers.\n\n * What happened here recently?\n * What is about to happen?\n * What should I be on the lookout for?\n * What here is useful or valuable to me?\n * Who's really in control here?\n * What here is not what it appears to be?",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [],
        "tags": [],
        "category": "basic"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "parley",
        "name": "Parley",
        "description":
            "When you **have leverage on a GM character and manipulate them**, roll+Cha. Leverage is something they need or want. On a hit they ask you for something and do it if you make them a promise first.\n* On a 7-9, they need some concrete assurance of your promise, right now.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [],
        "tags": [],
        "category": "basic"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "spout_lore",
        "name": "Spout Lore",
        "description":
            "When you **consult your accumulated knowledge about something**, roll+Int.\n* On a 10+ the GM will tell you something interesting and useful about the subject relevant to your situation.\n* On a 7-9 the GM will only tell you something interesting-it's on you to make it useful. The GM might ask you \"How do you know this?\" Tell them the truth, now.",
        "explanation": "",
        "dice": ["2d6+INT"],
        "classKeys": [],
        "tags": [],
        "category": "basic"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "aid_or_interfere",
        "name": "Aid or Interfere",
        "description":
            "When you **help or hinder someone you have a Bond with**, roll+Bond with them. On a hit they take +1 or -2, your choice.\n* On a 7-9 you also expose yourself to danger, retribution, or cost.",
        "explanation":
            "Any time you feel like two players should be rolling against each other, the defender should be interfering with the attacker. This doesn't always mean sabotaging them. It can mean anything from arguing against a parley to just being a shifty person who's hard to discern. It's about getting in the way of another players' success.\n\nAlways ask the person aiding or interfering how they are doing it. As long as they can answer that, they trigger the move. Sometimes, as the GM, you'll have to ask if interference is happening. Your players might not always notice they're interfering with each other.\n\nAid is a little more obvious. If a player can explain how they're helping with a move and it makes sense, let them roll to aid.\n\nNo matter how many people aid or interfere with a given roll, the target only gets the +1 or -2 once. Even if a whole party of adventurers aid in attacking an ogre, the one who makes the final attack only gets +1.\n\n\n> GM: Ozruk, you stand alone and bloodied before a pack of angry hellhounds. Behind you cowers the Prince of Lescia, weeping in terror.\n>\n> Ozruk: I stand firm and lift my shield. Despite certain doom, I will do my duty and defend the princeling.\n>\n>Aronwe: I emerge from the shadows and draw my sword! \"Doom is not so certain, dwarf!\" I stand beside him. I want to help him defend. \"Though I do not know you well, I have seen you in battle, Ozruk. If we are to die today, we die as brothers!\" I don't have any bonds with him but I want to try anyway.\n>\n> GM: Touching, really. Okay, roll+0 and if you succeed, Ozruk, take +1 to your defend attempt. Here we go!",
        "dice": ["2d6+BOND"],
        "classKeys": [],
        "tags": [],
        "category": "basic"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "encumbrance",
        "name": "Encumbrance",
        "description":
            "When you **make a move while carrying weight up to or equal to Load**, you're fine. When you make a move while carrying weight equal to load+1 or load+2, you take -1. When you make a move while carrying weight greater than load+2, you have a choice: drop at least 1 weight and roll at -1, or automatically fail.",
        "explanation":
            "A PC's load stat is determined by their class and Str. Being able to haul more is a clear benefit when trying to carry treasure out of a dungeon or just making sure you can bring along what you need.\n\nThis move only applies to things a person could walk around with and still act. Carrying a boulder on your back is not encumbrance-you can't really act or move much with it. It affects what moves you can make appropriately in the fiction.",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "make_camp",
        "name": "Make Camp",
        "description":
            "When you **settle in to rest** consume a ration. If you're somewhere dangerous decide the watch order as well. If you have enough XP you may level up. When you wake from at least a few uninterrupted hours of sleep heal damage equal to half your max HP.",
        "explanation":
            "You usually make camp so that you can do other things, like prepare spells or commune with your god. Or, you know, sleep soundly at night. Whenever you stop to catch your breath for more than an hour or so, you've probably made camp.\n\nStaying a night in an inn or house is making camp, too. Regain your hit points as usual, but only mark off a ration if you're eating from the food you carry, not paying for a meal or receiving hospitality.",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "take_watch",
        "name": "Take Watch",
        "description":
            "When you're on watch and something approaches the camp roll+Wis.\n* On a 10+, you're able to wake the camp and prepare a response, everyone in the camp takes +1 forward.\n* On a 7-9, you react just a moment too late; your companions in camp are awake but haven't had time to prepare. They have weapons and armor but little else.\n* On a miss, whatever lurks outside the campfire's light has the drop on you.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "bolster",
        "name": "Bolster",
        "description":
            "When you **spend your leisure time in study, meditation, or hard practice**, you gain preparation. If you prepare for a week or more, take 1 preparation. If you prepare for a month or longer, take 3 instead. When your preparation pays off spend 1 preparation for +1 to any roll. You can only spend one preparation per roll.",
        "explanation": "",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "supply",
        "name": "Supply",
        "description":
            "When you go to **buy something with gold on hand**, if it's something readily available in the settlement you're in, you can buy it at market price. If it's something special, beyond what's usually available here, or non-mundane, roll+Cha.\n* On a 10+, you find what you're looking for at a fair price.\n* On a 7-9, you'll have to pay more or settle for something that's not exactly what you wanted, but close. The GM will tell you what your options are.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "undertake_a_perilous_journey",
        "name": "Undertake a Perilous Journey",
        "description":
            "When you travel through hostile territory, choose one member of the party to act as trailblazer, one to scout ahead, and one to be quartermaster. Each character with a job to do rolls+Wis.\n* On a 10+:\n\n* the quartermaster reduces the number of rations required by one\n* the trailblazer reduces the amount of time it takes to reach your destination (the GM will say by how much)\n* the scout will spot any trouble quick enough to let you get the drop on it\n\n\n* On a 7-9, each role performs their job as expected: the normal number of rations are consumed, the journey takes about as long as expected, no one gets the drop on you but you don't get the drop on them either.",
        "explanation":
            "You can't assign more than one job to a character. If you don't have enough party members, or choose not to assign a job, treat that job as if it had been assigned and the responsible player had rolled a 6.\n\nDistances in Dungeon World are measured in rations. A ration is the amount of supplies used up in a day. Journeys take more rations when they are long or when travel is slow.\n\nA perilous journey is the whole way between two locations. You don't roll for one day's journey and then make camp only to roll for the next day's journey, too. Make one roll for the entire trip.\n\nThis move only applies when you know where you're going. Setting off to explore is not a perilous journey. It's wandering around looking for cool things to discover. Use up rations as you camp and the GM will give you details about the world as you discover them.",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "recover",
        "name": "Recover",
        "description":
            "When you **do nothing but rest in comfort and safety** after a day of rest you recover all your HP. After three days of rest you remove one debility of your choice. If you're under the care of a healer (magical or otherwise) you heal a debility for every two days of rest instead.",
        "explanation": "",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "carouse",
        "name": "Carouse",
        "description":
            "When you return triumphant and throw a big party, spend 100 coins and roll +1 for every extra 100 coins spent.\n* On a 10+, choose 3.\n* On a 7-9, choose 1.\n* On a miss, you still choose one, but things get really out of hand (the GM will say how).\n\nYour choices are:\n\n* You befriend a useful NPC.\n* You hear rumors of an opportunity.\n* You gain useful information.\n* You are not entangled, ensorcelled, or tricked.\n\nYou can only carouse when you return triumphant. That's what draws the crowd of revelers to surround adventurers as they celebrate their latest haul. If you don't proclaim your success or your failure, then who would want to party with you anyway?",
        "explanation": "",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "recruit",
        "name": "Recruit",
        "description":
            "When you put out word that you're looking to hire help, roll:\n\n* +1 if you make it known that your pay is generous\n* +1 if you make it known what you're setting out to do\n* +1 if you make it known that they'll get a share of whatever you find\n* +1 if you have a useful reputation around these parts\n\n\n* On a 10+, you've got your pick of a number of skilled applicants, your choice who you hire, no penalty for not taking them along.\n* On a 7-9, you'll have to settle for someone close to what you want or turn them away.\n* On a miss someone influential and ill-suited declares they'd like to come along (a foolhardy youth, a loose-cannon, or a veiled enemy, for example), bring them and take the consequences or turn them away. If you turn away applicants you take -1 forward to recruit.",
        "explanation": "",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "end_of_session",
        "name": "End of Session",
        "description":
            "When you **reach the end of a session**, choose one of your bonds that you feel is resolved (completely explored, no longer relevant, or otherwise). Ask the player of the character you have the bond with if they agree. If they do, mark XP and write a new bond with whomever you wish.\n\nOnce bonds have been updated look at your alignment. If you fulfilled that alignment at least once this session, mark XP. Then answer these three questions as a group:\n\n* Did we learn something new and important about the world?\n* Did we overcome a notable monster or enemy?\n* Did we loot a memorable treasure?\n\nFor each \"yes\" answer everyone marks XP.",
        "explanation": "",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "level",
        "name": "Level",
        "description":
            "When you **have downtime (hours or days) and XP equal to (or greater than) your current level+7**, you can reflect on your experiences and hone your skills.\n\n* Subtract your current level+7 from your XP.\n* Increase your level by 1.\n* Choose a new advanced move from your class.\n* If you are the wizard, you also get to add a new spell to your spellbook.\n* Choose one of your stats and increase it by 1 (this may change your modifier). Changing your Constitution increases your maximum and current HP. Ability scores can't go higher than 18.",
        "explanation": "",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "outstanding_warrants",
        "name": "Outstanding Warrants",
        "description":
            "When you return to a civilized place in which you've caused trouble before, roll+Cha.\n* On a 10+, word has spread of your deeds and everyone recognizes you.\n* On a 7-9, as above, and the GM chooses a complication:\n\n* The local constabulary has a warrant out for your arrest.\n* Someone has put a price on your head.\n* Someone important to you has been put in a bad spot as a result of your actions",
        "explanation":
            "This move is only for places where you've caused trouble, not every patch of civilization you enter. Being publicly caught up in someone else's trouble still triggers this move.\n\nCivilization generally means the villages, towns and cities of humans, elves, dwarves, and halflings but it can also apply to any relatively  lawful establishment of monstrous species, such as orcs or goblins. If the PCs have stayed in a place as part of the community, it counts as civilization.",
        "dice": ["2d6+CHA"],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "last_breath",
        "name": "Last Breath",
        "description":
            "When you're dying you catch a glimpse of what lies beyond the Black Gates of Death's Kingdom (the GM will describe it). Then roll (just roll, +nothing-yeah, Death doesn't care how tough or cool you are).\n* On a 10+ you've cheated death- you're in a bad spot but you're still alive.\n* On a 7-9 Death will offer you a bargain. Take it and stabilize or refuse and pass beyond the Black Gates into whatever fate awaits you. On a miss, your fate is sealed. You're marked as Death's own and you'll cross the threshold soon. The GM will tell you when.",
        "explanation":
            "The Last Breath is that moment standing between life and death. Time stands still as Death appears to claim the living for his own. Even those who do not pass beyond the Black Gates catch a glimpse of the other side and what might await them-friends and enemies past, rewards or punishment for acts in life or other, stranger vistas. All are changed in some way by this moment-even those who escape.\n\nThere are three outcomes to this move.\n* On a 10+, the Character has cheated Death in some meaningful way. He's escaped with something that, by rights, isn't his anymore. Death is powerless to stop this, but he remembers this slight.\n* On a 7-9, the GM should offer a real choice with significant consequence. Think about the behaviors of the character and the things you've learned about him in play. Death knows and sees all and tailors his bargains accordingly. This is a trade, remember. Offer something that will be a challenge to play out but will lead the game in fun new direction.\n* On a miss, death is inevitable. The most obvious approach is to say \"Death takes you across the threshold, into his bleak kingdom.\" and move on. However, sometimes Death comes slowly. You might say \"you have a week to live\" or \"you can feel the cold hand of Death on you…\" and leave it at that, for now. The player may want to give in and accept death at this point-that's okay. Let them create a new character as normal. The key thing to remember is that a brush with death, succeed or fail, is a significant moment that should always lead to change.\n\n\n> GM: Sparrow, as the knife blade disappears into your guts, the world fades away and you stand before the Black Gates of Death. Among the throngs of suffering souls, you spot Lord Hwyn, that sickly cur. It looks like all his ill deals caught up with him at last. He spots you across the bleak gulf and you feel the chill of his hunger in your very soul. Take your Last Breath.\n>\n> Sparrow: Heavy. I got a 9.\n>\n> GM: Death appears to you, wisps of black cloth dancing around his shadowy form. A pale hand touches your face. You hear his voice in your mind. \"Come to me so soon, pretty Sparrow? You follow a river of souls, sent here by your blade. I do so love you for them. I'll return you to the world, but you must make me a promise. In shadow you dwell, so shadow you shall become. Shun the light of day forever or find a quick trip back to my company. What do you say, little thief?\"\n>\n> Sparrow: (gulp)",
        "dice": [],
        "classKeys": [],
        "tags": [],
        "category": "special"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "arcane_art",
        "name": "Arcane Art",
        "description":
            "When you **weave a performance into a basic spell**, choose an ally and an effect:\n\n* Heal 1d8 damage\n* +1d4 forward to damage\n* Their mind is shaken clear of one enchantment\n* The next time someone successfully assists the target with aid, they get +2 instead of +1\n\nThen roll+Cha.\n\n* On a 10+, the ally gets the selected effect.\n* On a 7-9, your spell still works, but you draw unwanted attention or your magic reverberates to other targets affecting them as well, GM's choice",
        "explanation": "",
        "dice": ["2d6+CHA", "1d8", "1d4"],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "bardic_lore",
        "name": "Bardic Lore",
        "description":
            "Choose an area of expertise:\n\n* Spells and Magicks\n* The Dead and Undead\n* Grand Histories of the Known World\n* A Bestiary of Creatures Unusual\n* The Planar Spheres\n* Legends of Heroes Past\n* Gods and Their Servants\n\nWhen you **first encounter an important creature, location, or item (your call) covered by your bardic lore** you can ask the GM any one question about it; the GM will answer truthfully. The GM may then ask you what tale, song, or legend you heard that information in.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "charming_and_open",
        "name": "Charming and Open",
        "description":
            "When you **speak frankly with someone**, you can ask their player a question from the list below. They must answer it truthfully, then they may ask you a question from the list (which you must answer truthfully).\n\n* Whom do you serve?\n* What do you wish I would do?\n* How can I get you to __________?\n* What are you really feeling right now?\n* What do you most desire?",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "a_port_in_the_storm",
        "name": "A Port in the Storm",
        "description":
            "When you return to a civilized settlement you've visited before, tell the GM when you were last here. They'll tell you how it's changed since then.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "healing_song",
        "name": "Healing Song",
        "description": "When you heal with Arcane Art you heal +1d8 damage.",
        "explanation": "",
        "dice": ["1d8"],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "vicious_cacophony",
        "name": "Vicious Cacophony",
        "description":
            "When you **grant bonus damage with Arcane Art**, you grant an extra +1d4 damage.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "it_goes_to_eleven",
        "name": "It Goes To Eleven",
        "description":
            "When you unleash a crazed performance (a righteous lute solo or mighty brass blast, maybe) choose a target who can hear you and roll+CHA.\n\n * On a 10+ the target attacks their nearest ally in range.\n * On a 7-9 they attack their nearest ally, but you also draw their attention and ire.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "metal_hurlant",
        "name": "Metal Hurlant",
        "description":
            "When you shout with great force or play a shattering note choose a target and roll+CON.\n\n * On a 10+ the target takes 1d10 damage and is deafened for a few minutes.\n * On a 7-9 you still damage your target, but it's out of control: the GM will choose an additional target nearby.",
        "explanation": "",
        "dice": ["2d6+CON"],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "a_little_help_from_my_friends",
        "name": "A Little Help From My Friends",
        "description": "When you successfully aid someone you take +1 forward as well.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "eldritch_tome",
        "name": "Eldritch Tome",
        "description":
            "Your Arcane Art is strong, allowing you to choose two effects instead of one.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "duelists_parry",
        "name": "Duelist's Parry",
        "description": "When you Hack & Slash, you take +1 armor forward.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "bamboozle",
        "name": "Bamboozle",
        "description": "When you Parley with someone, on a 7+ you also take +1 forward with them.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "multiclass_dabbler",
        "name": "Multiclass Dabbler",
        "description":
            "Get one move from another class. Treat your level as one lower for choosing the move.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"},
          {
            "key": "cleric",
            "name": "Cleric",
            "type": "CharacterClass",
          },
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "multiclass_initiate",
        "name": "Multiclass Initiate",
        "description":
            "Get one move from another class. Treat your level as one lower for choosing the move.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"},
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "healing_chorus",
        "name": "Healing Chorus",
        "description": "When you heal with Arcane Art, you heal +2d8 damage.",
        "explanation": "",
        "dice": ["2d8"],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "vicious_blast",
        "name": "Vicious Blast",
        "description":
            "When you **grant bonus damage with Arcane Art**, you grant an extra +2d4 damage.",
        "explanation": "",
        "dice": ["2d4"],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "unforgettable_face",
        "name": "Unforgettable Face",
        "description":
            "When you **meet someone you've met before** (your call) after some time apart you take +1 forward against them.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "reputation",
        "name": "Reputation",
        "description":
            "When you **first meet someone who's heard songs about you**, roll+CHA.\n\n * On a 10+, tell the GM two things they've heard about you.\n * On a 7-9, tell the GM one thing they've heard, and the GM tells you one thing.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "eldritch_chord",
        "name": "Eldritch Chord",
        "description":
            "When you use Arcane Art, you choose two effects. You also get to choose one of those effects to double.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "an_ear_for_magic",
        "name": "An Ear For Magic",
        "description":
            "When you hear an enemy cast a spell the GM will tell you the name of the spell and its effects. Take +1 forward when acting on the answers.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "devious",
        "name": "Devious",
        "description":
            "When you use **Charming and Open** you may also ask \"How are you vulnerable to me?\" Your subject may not ask this question of you.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "duelistss_block",
        "name": "Duelists's Block",
        "description": "When you **Hack & Slash**, you take +2 armor forward.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "multiclass_master",
        "name": "Multiclass Master",
        "description":
            "Get a move from another class. Treat your level as one lower for choosing the move.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "deity",
        "name": "Deity",
        "description":
            "You serve and worship some deity or power which grants you spells. Give your god a name (maybe Helferth, Sucellus, Zorica or Krugon the Bleak) and choose your deity's domain:\n\n* Healing and Restoration\n* Bloody Conquest\n* Civilization\n* Knowledge and Hidden Things\n* The Downtrodden and Forgotten\n* What Lies Beneath\n\nChoose one precept of your religion:\n\n* Your religion preaches the sanctity of suffering, add Petition: Suffering\n* Your religion is cultish and insular, add Petition: Gaining Secrets\n* Your religion has important sacrificial rites, add Petition: Offering\n* Your religion believes in trial by combat, add Petition: Personal Victory",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_guidance",
        "name": "Divine Guidance",
        "description":
            "When you petition your deity according to the precept of your religion, you are granted some useful knowledge or boon related to your deity's domain. The GM will tell you what.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "turn_undead",
        "name": "Turn Undead",
        "description":
            "When you hold your holy symbol aloft and call on your deity for protection, roll+Wis.\n* On a 7+, so long as you continue to pray and brandish your holy symbol, no undead may come within reach of you.\n* On a 10+, you also momentarily daze intelligent undead and cause mindless undead to flee. Aggression breaks the effects and they are able to act as normal. Intelligent undead may still find ways to harry you from afar. They're clever like that.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "commune",
        "name": "Commune",
        "description":
            "When you spend uninterrupted time (an hour or so) in quiet communion with your deity, you:\n\n* Lose any spells already granted to you.\n* Are granted new spells of your choice whose total levels don't exceed your own level+1, and none of which is a higher level than your own level.\n* Prepare all of your rotes, which never count against your limit.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cast_a_spell",
        "name": "Cast a Spell",
        "description":
            "When you unleash a spell granted to you by your deity, roll+Wis.\n* On a 10+, the spell is successfully cast and your deity does not revoke the spell, so you may cast it again.\n* On a 7-9, the spell is cast, but choose one:\n\n* You draw unwelcome attention or put yourself in a spot. The GM will tell you how.\n* Your casting distances you from your deity-take -1 ongoing to cast a spell until the next time you commune.\n* After you cast it, the spell is revoked by your deity. You cannot cast the spell again until you commune and have it granted to you.\nNote that maintaining spells with ongoing effects will sometimes cause a penalty to your roll to cast a spell.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"},
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "chosen_one",
        "name": "Chosen One",
        "description": "Choose one spell. You are granted that spell as if it was one level lower.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "invigorate",
        "name": "Invigorate",
        "description": "When you heal someone they take +2 forward to their damage.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "the_scales_of_life_and_death",
        "name": "The Scales of Life and Death",
        "description":
            "When someone takes their last breath in your presence, they take +1 to the roll.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "serenity",
        "name": "Serenity",
        "description": "When you Cast a Spell you ignore the first -1 penalty from ongoing spells.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "first_aid",
        "name": "First Aid",
        "description":
            "Cure Light Wounds is a rote for you, and therefore doesn't count against your limit of granted spells.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_intervention",
        "name": "Divine Intervention",
        "description":
            "When you Commune you get 1 hold and lose any hold you already had. Spend that hold when you or an ally takes damage to call on your deity, they intervene with an appropriate manifestation (a sudden gust of wind, a lucky slip, a burst of light) and negate the damage.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "penitent",
        "name": "Penitent",
        "description":
            "When you take damage and embrace the pain, you may take +1d4 damage (ignoring armor). If you do, take +1 forward to cast a spell.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "empower",
        "name": "Empower",
        "description":
            "When you Cast a Spell, on a 10+ you have the option of choosing from the 7-9 list. If you do, you may choose one of these effects as well:\n\n* The spell's effects are doubled\n* The spell's targets are doubled",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "orison_for_guidance",
        "name": "Orison for Guidance",
        "description":
            "When you sacrifice something of value to your deity and pray for guidance, your deity tells you what it would have you do. If you do it, mark experience.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "devoted_healer",
        "name": "Devoted Healer",
        "description":
            "When you heal someone else of damage, add your level to the amount of damage healed.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "anointed",
        "name": "Anointed",
        "description":
            "Choose one spell in addition to the one you picked for chosen one. You are granted that spell as if it was one level lower.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "apotheosis",
        "name": "Apotheosis",
        "description":
            "The first time you spend time in prayer as appropriate to your god after taking this move, choose a feature associated with your deity (rending claws, wings of sapphire feathers, an all-seeing third eye, etc.). When you emerge from prayer, you permanently gain that physical feature.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "reaper",
        "name": "Reaper",
        "description":
            "When you take time after a conflict to dedicate your victory to your deity and deal with the dead, take +1 forward.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "providence",
        "name": "Providence",
        "description": "You ignore the -1 penalty from two spells you maintain.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "greater_first_aid",
        "name": "Greater First Aid",
        "description":
            "Cure Moderate Wounds is a rote for you, and therefore doesn't count against your limit of granted spells.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_invincibility",
        "name": "Divine Invincibility",
        "description":
            "When you Commune you gain 2 hold and lose any hold you already had. Spend that hold when you or an ally takes damage to call on your deity, who intervenes with an appropriate manifestation (a sudden gust of wind, a lucky slip, a burst of light) and negates the damage.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "martyr",
        "name": "Martyr",
        "description":
            "When you take damage and embrace the pain, you may take +1d4 damage (ignoring armor). If you do, take +1 forward to cast a spell and add your level to any damage done or healed by the spell.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_protection_paladin",
        "name": "Divine Protection",
        "description": "You get +2 armor while on a quest.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_armor",
        "name": "Divine Armor",
        "description": "When you wear no armor or shield you get 3 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "greater_empower",
        "name": "Greater Empower",
        "description":
            "When you cast a spell, on a 10-11 you have the option of choosing from the 7-9 list. If you do, you may choose one of these effects as well.\n* On a 12+ you get to choose one of these effects for free.\n\n* The spell's effects are doubled\n* The spell's targets are doubled",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "multiclass_dabbler",
        "name": "Multiclass Dabbler",
        "description":
            "Get one move from another class. Treat your level as one lower for choosing the move.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"},
          {
            "key": "cleric",
            "name": "Cleric",
            "type": "CharacterClass",
          },
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "born_of_the_soil",
        "name": "Born of the Soil",
        "description":
            "You learned your magic in a place whose spirits are strong and ancient and they've marked you as one of their own. No matter where you go, they live within you and allow you to take their shape. Choose one of the following. It is the land to which you are attuned-when shapeshifting you may take the shape of any animal who might live in your Land.\n\n* The Great Forests\n* The Whispering Plains\n* The Vast Desert\n* The Stinking Mire\n* The River Delta\n* The Depths of the Earth\n* The Sapphire Islands\n* The Open Sea\n* The Towering Mountains\n* The Frozen North\n* The Blasted Wasteland\n\nChoose a tell-a physical attribute that marks you as born of the soil-that reflects the spirit of your land. It may be an animal feature like antlers or leopard's spots or something more general: hair like leaves or eyes of glittering crystal. Your tell remains no matter what shape you take.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "by_nature_sustained",
        "name": "By Nature Sustained",
        "description":
            "You don't need to eat or drink. If a move tells you to mark off a ration just ignore it.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "spirit_tongue",
        "name": "Spirit Tongue",
        "description":
            "The grunts, barks, chirps, and calls of the creatures of the wild are as language to you. You can understand any animal native to your land or akin to one whose essence you have studied.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "shapeshifter",
        "name": "Shapeshifter",
        "description":
            "When you call upon the spirits to change your shape, roll+Wis.\n\n* On a 10+ hold 3.\n* On a 7-9 hold 2.\n* On a miss hold 1 in addition to whatever the GM says.\n\nYou may take on the physical form of any species whose essence you have studied or who lives in your land: you and your possessions meld into a perfect copy of the species' form.\n\n* You have any innate abilities and weaknesses of the form: claws, wings, gills, breathing water instead of air.\n* You still use your normal stats but some moves may be harder to trigger-a housecat will find it hard to do battle with an ogre.\n\nThe GM will also tell you one or more moves associated with your new form. Spend 1 hold to make that move. Once you're out of hold, you return to your natural form. At any time, you may spend all your hold and revert to your natural form.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "studied_essence",
        "name": "Studied Essence",
        "description":
            "When you spend time in contemplation of an animal spirit, you may add its species to those you can assume using shapeshifting.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "hunters_brother",
        "name": "Hunter's Brother",
        "description": "Choose one move from the ranger class list.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "red_of_tooth_and_claw",
        "name": "Red of Tooth and Claw",
        "description":
            "When you are in an appropriate animal form (something dangerous) increase your damage to d8.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "communion_of_whispers",
        "name": "Communion of Whispers",
        "description":
            "When you spend time in a place, making note of its resident spirits and calling on the spirits of the land, roll+Wis. You will be granted a vision of significance to you, your allies, and the spirits around you.\n* On a 10+ the vision will be clear and helpful to you.\n* On a 7-9 the vision is unclear, its meaning murky. On a miss, the vision is upsetting, frightening, or traumatizing. The GM will describe it. Take -1 forward.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "barkskin",
        "name": "Barkskin",
        "description": "So long as your feet touch the ground you have +1 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "eyes_of_the_tiger",
        "name": "Eyes of the Tiger",
        "description":
            "When you mark an animal (with mud, dirt, or blood) you can see through that animal's eyes as if they were your own, no matter what distance separates you. Only one animal at a time may be marked in this way.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "shed",
        "name": "Shed",
        "description":
            "When you take damage while shapeshifted you may choose to revert to your natural form to negate the damage.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "thing_talker",
        "name": "Thing-Talker",
        "description":
            "You see the spirits in the sand, the sea and the stone. You may now apply your spirit tongue, shapeshifting and studied essence to inanimate natural objects (plants and rocks) or creatures made thereof, as well as animals. Thing-talker forms can be exact copies or can be mobile vaguely humanoid-shaped entities.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "formcrafter",
        "name": "Formcrafter",
        "description":
            "When you shapeshift choose a stat: you take +1 ongoing to rolls using that stat while shifted. The GM will choose a stat, too: you take -1 ongoing to rolls using that stat while shifted.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "elemental_mastery",
        "name": "Elemental Mastery",
        "description":
            "When you call on the primal spirits of fire, water, earth or air to perform a task for you roll+Wis.\n* On a 10+ choose two.\n* On a 7-9 choose one. On a miss, some catastrophe occurs as a result of your calling.\n\n* The effect you desire comes to pass\n* You avoid paying nature's price\n* You retain control",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "balance",
        "name": "Balance",
        "description":
            "When you deal damage, take 1 balance. When you touch someone and channel the spirits of life you may spend balance. For each balance spent, heal 1d4 HP.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "embracing_no_form",
        "name": "Embracing No Form",
        "description": "When you shapeshift, roll 1d4 and add that total to your hold.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "doppelgangers_dance",
        "name": "Doppelgänger's Dance",
        "description":
            "You are able to study the essence of specific individuals to take their exact form, including men, elves, or the like. Suppressing your tell is possible, but if you do, take -1 ongoing until you return to your own form.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "blood_and_thunder",
        "name": "Blood and Thunder",
        "description":
            "When you are in an appropriate animal form (something dangerous) increase your damage to d10.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "the_druid_sleep",
        "name": "The Druid Sleep",
        "description":
            "When you take this move, the next opportunity that you have safety and time to spend in an appropriate location, you may attune yourself to a new land. This effect occurs only once and the GM will tell you how long it will take and what cost you must pay. From then on, you are considered to be born of the soil in both lands.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "world_talker",
        "name": "World-Talker",
        "description":
            "You see the patterns that make up the fabric of the world. You may now apply your spirit tongue, shapeshifter and studied essence moves to pure elements-fire, water, air and earth.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "stalkers_sister",
        "name": "Stalker's Sister",
        "description": "Choose one move from the ranger class list.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "formshaper",
        "name": "Formshaper",
        "description":
            "You may increase your armor by 1 or deal an additional +1d4 damage while in an animal form. Choose which when you shapeshift.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "chimera",
        "name": "Chimera",
        "description":
            "When you shapeshift, you may create a merged form of up to three different shapes. You may be a bear with the wings of an eagle and the head of a ram, for example. Each feature will grant you a different move to make. Your chimera form follows the same rules as shapeshifter otherwise.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "weather_weaver",
        "name": "Weather Weaver",
        "description":
            "When you are under open skies when the sun rises the GM will ask you what the weather will be that day. Tell them whatever you like, it comes to pass.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "druid", "name": "Druid", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "bend_bars_lift_gates",
        "name": "Bend Bars, Lift Gates",
        "description":
            "When you use pure strength to destroy an inanimate obstacle, roll+Str.\n* On a 10+, choose 3.\n* On a 7-9 choose 2.\n\n* It doesn't take a very long time\n* Nothing of value is damaged\n* It doesn't make an inordinate amount of noise\n* You can fix the thing again without a lot of effort",
        "explanation": "",
        "dice": ["2d6+STR"],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "armored",
        "name": "Armored",
        "description": "You ignore the clumsy tag on armor you wear.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"},
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "signature_weapon",
        "name": "Signature Weapon",
        "description":
            "This is your weapon. There are many like it, but this one is yours. Your weapon is your best friend. It is your life. You master it as you master your life. Your weapon, without you, is useless. Without your weapon, you are useless. You must wield your weapon true.\n\nChoose a base description, all are 2 weight:\n\n* Sword\n* Axe\n* Hammer\n* Spear\n* Flail\n* Fists\n\nChoose the range that best fits your weapon:\n\n* Hand\n* Close\n* Reach\n\nChoose two enhancements:\n\n* Hooks and spikes. +1 damage, but +1 weight.\n* Sharp. +2 piercing.\n* Perfectly weighted. Add precise.\n* Serrated edges. +1 damage.\n* Glows in the presence of one type of creature, your choice.\n* Huge. Add messy and forceful.\n* Versatile. Choose an additional range.\n* Well-crafted. -1 weight.\n\nChoose a look:\n\n* Ancient\n* Unblemished\n* Ornate\n* Blood-stained\n* Sinister",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "merciless",
        "name": "Merciless",
        "description": "When you deal damage, deal +1d4 damage.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "heirloom",
        "name": "Heirloom",
        "description":
            "When you consult the spirits that reside within your signature weapon, they will give you an insight relating to the current situation, and might ask you some questions in return, roll+CHA.\n* On a 10+, the GM will give you good detail.\n* On a 7-9, the GM will give you an impression.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "armor_mastery",
        "name": "Armor Mastery",
        "description":
            "When you make your armor take the brunt of damage dealt to you, the damage is negated but you must reduce the armor value of your armor or shield (your choice) by 1. The value is reduced each time you make this choice. If the reduction leaves the item with 0 armor it is destroyed.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "improved_weapon",
        "name": "Improved Weapon",
        "description": "Choose one extra enhancement for your signature weapon.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "seeing_red",
        "name": "Seeing Red",
        "description": "When you Discern Realities during combat, you take +1.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "interrogator",
        "name": "Interrogator",
        "description":
            "When you Parley using threats of impending violence as leverage, you may use STR instead of CHA.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "scent_of_blood",
        "name": "Scent of Blood",
        "description":
            "When you Hack & Slash an enemy, your next attack against that same foe deals +1d4 damage.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "multiclass_dabbler",
        "name": "Multiclass Dabbler",
        "description":
            "Get one move from another class. Treat your level as one lower for choosing the move.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"},
          {
            "key": "cleric",
            "name": "Cleric",
            "type": "CharacterClass",
          },
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "iron_hide",
        "name": "Iron Hide",
        "description": "You gain +1 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "blacksmith",
        "name": "Blacksmith",
        "description":
            "When you have access to a forge you can graft the magical powers of a weapon onto your signature weapon. This process destroys the magical weapon. Your signature weapon gains the magical powers of the destroyed weapon.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "bloodthirsty",
        "name": "Bloodthirsty",
        "description": "When you deal damage, deal +1d8 damage.",
        "explanation": "",
        "dice": ["1d8"],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "armored_perfection",
        "name": "Armored Perfection",
        "description":
            "When you choose to let your armor take the brunt of damage dealt to you, the damage is negated and you take +1 forward against the attacker, but you must reduce the armor value of your armor or shield (your choice) by 1. The value is reduced each time you make this choice. If the reduction leaves the item with 0 armor it is destroyed.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "evil_eye",
        "name": "Evil Eye",
        "description":
            "When you enter combat, roll+CHA.\n* On a 10+, hold 2.\n* On a 7-9, hold 1. Spend your hold to make eye contact with an NPC present, who freezes or flinches and can't act until you break it off.\n* On a 6-, your enemies immediately identify you as their biggest threat.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "taste_of_blood",
        "name": "Taste of Blood",
        "description":
            "When you Hack & Slash an enemy, your next attack against that same foe deals +1d8 damage.",
        "explanation": "",
        "dice": ["1d8"],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "multiclass_initiate",
        "name": "Multiclass Initiate",
        "description":
            "Get one move from another class. Treat your level as one lower for choosing the move.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "bard", "name": "Bard", "type": "CharacterClass"},
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "steel_hide",
        "name": "Steel Hide",
        "description": "You gain +2 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "through_deaths_eyes",
        "name": "Through Death's Eyes",
        "description":
            "When you go into battle, roll+WIS.\n* On a 10+, name someone who will live and someone who will die.\n* On a 7-9, name someone who will live or someone who will die. Name NPCs, not player characters. The GM will make your vision come true, if it's even remotely possible.\n* On a 6- you see your own death and consequently take -1 ongoing throughout the battle.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "eye_for_weaponry",
        "name": "Eye for Weaponry",
        "description":
            "When you look over an enemy's weaponry, ask the GM how much damage they do.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "superior_warrior",
        "name": "Superior Warrior",
        "description":
            "When you Hack & Slash on a 12+ you deal your damage, avoid their attack, and impress, dismay, or frighten your enemy.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "lay_on_hands",
        "name": "Lay on Hands",
        "description":
            "When you touch someone, skin to skin, and pray for their well-being , roll+CHA.\n* On a 10+ you heal 1d8 damage or remove one disease.\n* On a 7-9, they are healed, but the damage or disease is transferred to you.",
        "explanation": "",
        "dice": ["2d6+CHA", "1d8"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "armored",
        "name": "Armored",
        "description": "You ignore the clumsy tag on armor you wear.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "fighter", "name": "Fighter", "type": "CharacterClass"},
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "i_am_the_law",
        "name": "I Am the Law",
        "description":
            "When you give an NPC an order based on your divine authority, roll+Cha.\n* On a 7+, they choose one:\n\n\t* Do what you say\n\t* Back away cautiously, then flee\n\t* Attack you\n* On a 10+, you also take +1 forward against them.\n* On a miss, they do as they please and you take -1 forward against them.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "quest",
        "name": "Quest",
        "description":
            "When you dedicate yourself to a mission through prayer and ritual cleansing, state what you set out to do:\n\n* Slay __________, a great blight on the land\n* Defend __________ from the iniquities that beset them\n* Discover the truth of __________\n\nThen choose up to two boons:\n\n* An unwavering sense of direction to __________.\n* Invulnerability to __________ (e.g., edged weapons, fire, enchantment, etc.)\n* A mark of divine authority\n* Senses that pierce lies\n* A voice that transcends language\n* A freedom from hunger, thirst, and sleep\n\nThe GM will then tell you what vow or vows is required of you to maintain your blessing:\n\n* Honor (forbidden: cowardly tactics and tricks)\n* Temperance (forbidden: gluttony in food, drink, and pleasure of the flesh)\n* Piety (required: observance of daily holy services)\n* Valor (forbidden: suffering an evil creature to live)\n* Truth (forbidden: lies)\n* Hospitality (required: comfort to those in need, no matter who they are)",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_favor",
        "name": "Divine Favor",
        "description":
            "Dedicate yourself to a deity (name a new one or choose one that's already been established). You gain the commune and cast a spell cleric moves. When you select this move, treat yourself as a cleric of level 1 for using spells. Every time you gain a level thereafter, increase your effective cleric level by 1.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "bloody_aegis",
        "name": "Bloody Aegis",
        "description":
            "When you take damage you can grit your teeth and accept the blow. If you do you take no damage but instead suffer a debility of your choice. If you already have all six debilities you can't use this move.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "smite",
        "name": "Smite",
        "description": "While on a quest you deal +1d4 damage.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "exterminatus",
        "name": "Exterminatus",
        "description":
            "When you speak aloud your promise to defeat an enemy, you deal +2d4 damage against that enemy and -4 damage against anyone else. This effect lasts until the enemy is defeated. If you fail to defeat the enemy or give up the fight, you can admit your failure, but the effect continues until you find a way to redeem yourself.",
        "explanation": "",
        "dice": ["2d4"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "charge",
        "name": "Charge!",
        "description": "When you lead the charge into combat, those you lead take +1 forward.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "staunch_defender",
        "name": "Staunch Defender",
        "description": "When you Defend you always get +1 hold, even on a 6-.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "setup_strike",
        "name": "Setup Strike",
        "description":
            "When you Hack & Slash, choose an ally. Their next attack against your target does +1d4 damage.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "holy_protection",
        "name": "Holy Protection",
        "description": "You get +1 armor while on a quest.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "voice_of_authority",
        "name": "Voice of Authority",
        "description": "Take +1 to order hirelings.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "hospitaller",
        "name": "Hospitaller",
        "description": "When you heal an ally, you heal +1d8 damage.",
        "explanation": "",
        "dice": ["1d8"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "evidence_of_faith",
        "name": "Evidence of Faith",
        "description":
            "When you see divine magic as it happens, you can ask the GM which deity granted the spell and its effects. Take +1 when acting on the answers.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "holy_smite",
        "name": "Holy Smite",
        "description": "While on a quest you deal +1d8 damage.",
        "explanation": "",
        "dice": ["1d8"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "ever_onward",
        "name": "Ever Onward",
        "description":
            "When you lead the charge into combat, those you lead take +1 forward and +2 armor forward.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "impervious_defender",
        "name": "Impervious Defender",
        "description":
            "When you Defend you always get +1 hold, even on a 6-. When you get a 12+ to defend instead of getting hold the nearest attacking creature is stymied giving you a clear advantage, the GM will describe it.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "tandem_strike",
        "name": "Tandem Strike",
        "description":
            "When you Hack & Slash, choose an ally. Their next attack against your target does +1d4 damage and they take +1 forward against them.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_protection",
        "name": "Divine Protection",
        "description": "When you wear no armor or Shield you get 2 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"},
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "divine_authority",
        "name": "Divine Authority",
        "description":
            "Take +1 to order hirelings. When you roll a 12+ the hireling transcends their moment of fear and doubt and carries out your order with particular effectiveness or efficiency.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "perfect_hospitaller",
        "name": "Perfect Hospitaller",
        "description": "When you heal an ally, you heal +2d8 damage.",
        "explanation": "",
        "dice": ["2d8"],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "indomitable",
        "name": "Indomitable",
        "description":
            "When you suffer a debility (even through Bloody Aegis) take +1 forward against whatever caused it.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "perfect_knight",
        "name": "Perfect Knight",
        "description": "When you Quest you choose three boons instead of two.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "paladin", "name": "Paladin", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "hunt_and_track",
        "name": "Hunt and Track",
        "description":
            "When you follow a trail of clues left behind by passing creatures, roll+WIS.\n* On a 7+, you follow the creature's trail until there's a significant change in its direction or mode of travel.\n* On a 10+, you also choose 1:\n\n* Gain a useful bit of information about your quarry, the GM will tell you what\n* Determine what caused the trail to end",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "called_shot",
        "name": "Called Shot",
        "description":
            "When you attack a defenseless or surprised enemy at range, you can choose to deal your damage or name your target and roll+DEX.\n\n* Head 10+: As 7-9, plus your damage 7-9: They do nothing but stand and drool for a few moments.\n* Arms 10+: As 7-9, plus your damage 7-9: They drop anything they're holding.\n* Legs 10+: As 7-9, plus your damage 7-9: They're hobbled and slow moving.",
        "explanation": "",
        "dice": ["2d6+DEX"],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "animal_companion",
        "name": "Animal Companion",
        "description":
            "You have a supernatural connection with a loyal animal. You can't talk to it per se but it always acts as you wish it to. Name your animal companion and choose a species:\nWolf, cougar, bear, eagle, dog, hawk, cat, owl, pigeon, rat, mule\n\nChoose a base:\n\n* Ferocity +2, Cunning +1, 1 Armor, Instinct +1\n* Ferocity +2, Cunning +2, 0 Armor, Instinct +1\n* Ferocity +1, Cunning +2, 1 Armor, Instinct +1\n* Ferocity +3, Cunning +1, 1 Armor, Instinct +2\n\nChoose as many strengths as its ferocity:\nFast, burly, huge, calm, adaptable, quick reflexes, tireless, camouflage, ferocious, intimidating, keen senses, stealthy\n\nYour animal companion is trained to fight humanoids. Choose as many additional trainings as its cunning:\nHunt, search, scout, guard, fight monsters, perform, labor, travel\n\nChoose as many weaknesses as its instinct:\nFlighty, savage, slow, broken, frightening, forgetful, stubborn, lame",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "command",
        "name": "Command",
        "description":
            "When you work with your animal companion on something it's trained in…\n\n* …and you attack the same target, add its ferocity to your damage\n* …and you track, add its cunning to your roll\n* …and you take damage, add its armor to your armor\n* …and you Discern Realities, add its cunning to your roll\n* …and you parley, add its cunning to your roll\n* …and someone interferes with you, add its instinct to their roll",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "half_elven",
        "name": "Half-Elven",
        "description":
            "Somewhere in your lineage lies mixed blood and it begins to show its presence. You gain the elf starting move if you took the human one at character creation or vice versa.\n\nYou may take this move only if it is your first advancement.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "wild_empathy",
        "name": "Wild Empathy",
        "description": "You can speak with and understand animals.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "familiar_prey",
        "name": "Familiar Prey",
        "description": "When you Spout Lore about a monster you use WIS instead of INT.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "vipers_strike",
        "name": "Viper's Strike",
        "description":
            "When you strike an enemy with two weapons at once, add an extra 1d4 damage for your off-hand strike.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "camouflage",
        "name": "Camouflage",
        "description":
            "When you keep still in natural surroundings, enemies never spot you until you make a movement.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "mans_best_friend",
        "name": "Man's Best Friend",
        "description":
            "When you allow your animal companion to take a blow that was meant for you, the damage is negated and your animal companion's ferocity becomes 0. If its ferocity is already 0 you can't use this ability. When you have a few hours of rest with your animal companion its ferocity returns to normal.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "blot_out_the_sun",
        "name": "Blot Out the Sun",
        "description":
            "When you Volley you may spend extra ammo before rolling. For each point of ammo spent you may choose an extra target. Roll once and apply damage to all targets.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "well_trained",
        "name": "Well-Trained",
        "description": "Choose another training for your animal companion.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "god_amidst_the_wastes",
        "name": "God Amidst the Wastes",
        "description":
            "Dedicate yourself to a deity (name a new one or choose one that's already been established). You gain the Commune and Cast a Spell cleric moves. When you select this move, treat yourself as a cleric of level 1 for using spells. Every time you gain a level thereafter, increase your effective cleric level by 1.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "follow_me",
        "name": "Follow Me",
        "description":
            "When you Undertake a Perilous Journey you can take two roles. You make a separate roll for each.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "a_safe_place",
        "name": "A Safe Place",
        "description": "When you set the watch for the night, everyone takes +1 to Take Watch.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "wild_speech",
        "name": "Wild Speech",
        "description": "You can speak with and understand any non-magical, non-planar creature.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "hunters_prey",
        "name": "Hunter's Prey",
        "description":
            "When you Spout Lore about a monster you use WIS instead of INT.\n* On a 12+, in addition to the normal effects, you get to ask the GM any one question about the subject.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "vipers_fangs",
        "name": "Viper's Fangs",
        "description":
            "When you strike an enemy with two weapons at once, add an extra 1d8 damage for your off-hand strike.",
        "explanation": "",
        "dice": ["1d8"],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "smaugs_belly",
        "name": "Smaug's Belly",
        "description": "When you know your target's weakest point your arrows have 2 piercing.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "strider",
        "name": "Strider",
        "description":
            "When you Undertake a Perilous Journey you can take two roles. Roll twice and use the better result for both roles.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "a_safer_place",
        "name": "A Safer Place",
        "description":
            "When you set the watch for the night everyone takes +1 to Take Watch. After a night in camp when you set the watch everyone takes +1 forward.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "observant",
        "name": "Observant",
        "description":
            "When you Hunt and Track, on a hit you may also ask one question about the creature you are tracking from the Discern Realities list for free.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "special_trick",
        "name": "Special Trick",
        "description":
            "Choose a move from another class. So long as you are working with your animal companion you have access to that move.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "unnatural_ally",
        "name": "Unnatural Ally",
        "description":
            "Your animal companion is a monster, not an animal. Describe it. Give it +2 ferocity and +1 instinct, plus a new training.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "ranger", "name": "Ranger", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "trap_expert",
        "name": "Trap Expert",
        "description":
            "When you spend a moment to survey a dangerous area, roll+DEX.\n* On a 10+, hold 3.\n* On a 7-9, hold 1. Spend your hold as you walk through the area to ask these questions:\n\n\t* Is there a trap here and if so, what activates it?\n\t* What does the trap do when activated?\n\t* What else is hidden here?",
        "explanation": "",
        "dice": ["2d6+DEX"],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "tricks_of_the_trade",
        "name": "Tricks of the Trade",
        "description":
            "When you pick locks or pockets or disable traps, roll+DEX.\n* On a 10+, you do it, no problem.\n* On a 7-9, you still do it, but the GM will offer you two options between suspicion, danger, or cost.",
        "explanation": "",
        "dice": ["2d6+DEX"],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "backstab",
        "name": "Backstab",
        "description":
            "When you attack a surprised or defenseless enemy with a melee weapon, you can choose to deal your damage or roll+DEX.\n* On a 10+ choose two.\n* On a 7-9 choose one.\n\n* You don't get into melee with them\n* You deal your damage+1d6\n* You create an advantage, +1 forward to you or an ally acting on it\n* Reduce their armor by 1 until they repair it",
        "explanation": "",
        "dice": ["2d6+DEX", "1d6"],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "flexible_morals",
        "name": "Flexible Morals",
        "description":
            "When someone tries to detect your alignment you can tell them any alignment you like.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "poisoner",
        "name": "Poisoner",
        "description":
            "You've mastered the care and use of a poison. Choose a poison from the list below; that poison is no longer dangerous for you to use. You also start with three uses of the poison you choose. Whenever you have time to gather materials and a safe place to brew you can make three uses of the poison you choose for free. Note that some poisons are applied, meaning you have to carefully apply it to the target or something they eat or drink. Touch poisons just need to touch the target, they can even be used on the blade of a weapon.\n\n* Oil of Tagit (applied): The target falls into a light sleep\n* Bloodweed (touch): The target deals -1d4 damage ongoing until cured\n* Goldenroot (applied): The target treats the next creature they see as a trusted ally, until proved otherwise\n* Serpent's Tears (touch): Anyone dealing damage to the target rolls twice and takes the better result.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cheap_shot",
        "name": "Cheap Shot",
        "description":
            "When using a precise or hand weapon, your Backstab deals an extra +1d6 damage.",
        "explanation": "",
        "dice": ["1d6"],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cautious",
        "name": "Cautious",
        "description": "When you use Trap Expert you always get +1 hold, even on a 6-.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "wealth_and_taste",
        "name": "Wealth and Taste",
        "description":
            "When you make a show of flashing around your most valuable possession, choose someone present. They will do anything they can to obtain your item or one like it.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "shoot_first",
        "name": "Shoot First",
        "description":
            "You're never caught by surprise. When an enemy would get the drop on you, you get to act first instead.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "poison_master",
        "name": "Poison Master",
        "description": "After you've used a poison once it's no longer dangerous for you to use.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "envenom",
        "name": "Envenom",
        "description":
            "You can apply even complex poisons with a pinprick. When you apply a poison that's not dangerous for you to use to your weapon it's touch instead of applied.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "brewer",
        "name": "Brewer",
        "description":
            "When you have time to gather materials and a safe place to brew you can create three doses of any one poison you've used before.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "underdog",
        "name": "Underdog",
        "description": "When you're outnumbered, you have +1 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "connections",
        "name": "Connections",
        "description":
            "When you put out word to the criminal underbelly about something you want or need, roll+CHA.\n* On a 10+, someone has it, just for you.\n* On a 7-9, you'll have to settle for something close or it comes with strings attached, your call.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "dirty_fighter",
        "name": "Dirty Fighter",
        "description":
            "When using a precise or hand weapon, your backstab deals an extra +1d8 damage and all other attacks deal +1d4 damage.",
        "explanation": "",
        "dice": ["1d8", "1d4"],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "extremely_cautious",
        "name": "Extremely Cautious",
        "description":
            "When you use Trap Expert you always get +1 hold, even on a 6-.\n* On a 12+ you get 3 hold and the next time you come near a trap the GM will immediately tell you what it does, what triggers it, who set it, and how you can use it to your advantage.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "alchemist",
        "name": "Alchemist",
        "description":
            "When you have you have time to gather materials and a safe place to brew you can create three doses of any poison you've used before. Alternately you can describe the effects of a poison you'd like to create. The GM will tell you that you can create it, but with one or more caveats:\n\n* It will only work under specific circumstances\n* The best you can manage is a weaker version\n* It'll take a while to take effect\n* It'll have obvious side effects",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "serious_underdog",
        "name": "Serious Underdog",
        "description": "You have +1 armor. When you're outnumbered, you have +2 armor instead.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "evasion",
        "name": "Evasion",
        "description":
            "When you Defy Danger on a 12+, you transcend the danger. You not only do what you set out to, but the GM will offer you a better outcome, true beauty, or a moment of grace.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "strong_arm_true_aim",
        "name": "Strong Arm, True Aim",
        "description":
            "You can throw any melee weapon, using it to Volley. A thrown melee weapon is gone; you can never choose to reduce ammo on a 7-9.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "escape_route",
        "name": "Escape Route",
        "description":
            "When you're in too deep and need a way out, name your escape route and roll+DEX.\n* On a 10+ you're gone.\n* On a 7-9 you can stay or go, but if you go it costs you: leave something behind or take something with you, the GM will tell you what.",
        "explanation": "",
        "dice": ["2d6+DEX"],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "disguise",
        "name": "Disguise",
        "description":
            "When you have time and materials you can create a disguise that will fool anyone into thinking you're another creature of about the same size and shape. Your actions can give you away but your appearance won't.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "heist",
        "name": "Heist",
        "description":
            "When you take time to make a plan to steal something, name the thing you want to steal and ask the GM these questions. When acting on the answers you and your allies take +1 forward.\n\n* Who will notice it's missing?\n* What's its most powerful defense?\n* Who will come after it?\n* Who else wants it?",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "thief", "name": "Thief", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "spellbook",
        "name": "Spellbook",
        "description":
            "You have mastered several spells and inscribed them in your spellbook. You start out with three first level spells in your spellbook as well as the cantrips. Whenever you gain a level, you add a new spell of your level or lower to your spellbook. You spellbook is 1 weight.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "prepare_spells",
        "name": "Prepare Spells",
        "description":
            "When you spend uninterrupted time (an hour or so) in quiet contemplation of your spellbook, you:\nLose any spells you already have prepared\n\nPrepare new spells of your choice from your spellbook whose total levels don't exceed your own level+1.\n\nPrepare your cantrips which never count against your limit.\n* Lose any spells you already have prepared\n* Prepare new spells of your choice from your spellbook whose total levels don't exceed your own level+1.\n* Prepare your cantrips which never count against your limit.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "spell_defense",
        "name": "Spell Defense",
        "description":
            "You may end any ongoing spell immediately and use the energy of its dissipation to deflect an oncoming attack. The spell ends and you subtract its level from the damage done to you.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "ritual",
        "name": "Ritual",
        "description":
            "When you draw on a place of power to create a magical effect, tell the GM what you're trying to achieve. Ritual effects are always possible, but the GM will give you one to four of the following conditions:\n\n* It's going to take days/weeks/months\n* First you must __________\n* You'll need help from __________\n* It will require a lot of money\n* The best you can do is a lesser version, unreliable and limited\n* You and your allies will risk danger from __________\n* You'll have to disenchant __________ to do it",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "cast_a_spell",
        "name": "Cast a Spell",
        "description":
            "When you unleash a spell granted to you by your deity, roll+Wis.\n* On a 10+, the spell is successfully cast and your deity does not revoke the spell, so you may cast it again.\n* On a 7-9, the spell is cast, but choose one:\n\n* You draw unwelcome attention or put yourself in a spot. The GM will tell you how.\n* Your casting distances you from your deity-take -1 ongoing to cast a spell until the next time you commune.\n* After you cast it, the spell is revoked by your deity. You cannot cast the spell again until you commune and have it granted to you.\nNote that maintaining spells with ongoing effects will sometimes cause a penalty to your roll to cast a spell.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "cleric", "name": "Cleric", "type": "CharacterClass"},
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "prodigy",
        "name": "Prodigy",
        "description": "Choose a spell. You prepare that spell as if it were one level lower.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "empowered_magic",
        "name": "Empowered Magic",
        "description":
            "When you Cast a Spell, on a 10+ you have the option of choosing from the 7-9 list. If you do, you may choose one of these as well:\nThe spell's effects are maximized\n\nThe spell's targets are doubled\n* The spell's effects are maximized\n* The spell's targets are doubled",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "fount_of_knowledge",
        "name": "Fount of Knowledge",
        "description":
            "When you Spout Lore about something no one else has any clue about, take +1.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "know_it_all",
        "name": "Know-It-All",
        "description":
            "When another player's character comes to you for advice and you tell them what you think is best, they get +1 forward when following your advice and you mark experience if they do.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "expanded_spellbook",
        "name": "Expanded Spellbook",
        "description": "Add a new spell from the spell list of any class to your spellbook.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "enchanter",
        "name": "Enchanter",
        "description":
            "When you have time and safety with a magic item you may ask the GM what it does, the GM will answer you truthfully.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "logical",
        "name": "Logical",
        "description":
            "When you use strict deduction to analyze your surroundings, you can Discern Realities with INT instead of WIS.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "arcane_ward",
        "name": "Arcane Ward",
        "description":
            "As long as you have at least one prepared spell of first level or higher, you have +2 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "counterspell",
        "name": "Counterspell",
        "description":
            "When you attempt to counter an arcane spell that will otherwise affect you, stake one of your prepared spells on the defense and roll+Int.\n* On a 10+, the spell is countered and has no effect on you.\n* On a 7-9, the spell is countered and you forget the spell you staked. Your counterspell protects only you; if the countered spell has other targets they get its effects.",
        "explanation": "",
        "dice": ["2d6+INT"],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "quick_study",
        "name": "Quick Study",
        "description":
            "When you see the effects of an arcane spell, ask the GM the name of the spell and its effects. You take +1 when acting on the answers.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "master",
        "name": "Master",
        "description":
            "Choose one spell in addition to the one you picked for prodigy. You prepare that spell as if it were one level lower.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "greater_empowered_magic",
        "name": "Greater Empowered Magic",
        "description":
            "When you Cast a Spell, on a 10-11 you have the option of choosing from the 7-9 list. If you do, you may choose one of these effects as well.\n* On a 12+ you get to choose one of these effects for free:\nThe spell's effects are doubled\n\nThe spell's targets are doubled\n* The spell's effects are doubled\n* The spell's targets are doubled",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "enchanters_soul",
        "name": "Enchanter's Soul",
        "description":
            "When you have time and safety with a magic item in a place of power you can empower that item so that the next time you use it its effects are amplified, the GM will tell you exactly how.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "highly_logical",
        "name": "Highly Logical",
        "description":
            "When you use strict deduction to analyze your surroundings, you can Discern Realities with Int instead of Wis.\n* On a 12+ you get to ask the GM any three questions, not limited by the list.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "arcane_armor",
        "name": "Arcane Armor",
        "description":
            "As long as you have at least one prepared spell of first level or higher, you have +4 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "protective_counter",
        "name": "Protective Counter",
        "description":
            "When an ally within sight of you is affected by an arcane spell, you can counter it as if it affected you. If the spell affects multiple allies you must counter for each ally separately.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "ethereal_tether",
        "name": "Ethereal Tether",
        "description":
            "When you have time with a willing or helpless subject you can craft an ethereal tether with them. You perceive what they perceive and can Discern Realities about someone tethered to you or their surroundings no matter the distance. Someone willingly tethered to you can communicate with you over the tether as if you were in the room with them.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "mystical_puppet_strings",
        "name": "Mystical Puppet Strings",
        "description":
            "When you use magic to control a person's actions they have no memory of what you had them do and bear you no ill will.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "spell_augmentation",
        "name": "Spell Augmentation",
        "description":
            "When you deal damage to a creature you can shunt a spell's energy into them-end one of your ongoing spells and add the spell's level to the damage dealt.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "self_powered",
        "name": "Self-Powered",
        "description":
            "When you have time, arcane materials, and a safe space, you can create your own place of power. Describe to the GM what kind of power it is and how you're binding it to this place, the GM will tell you one kind of creature that will have an interest in your workings.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "wizard", "name": "Wizard", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "burning_brand",
        "name": "Burning Brand",
        "description":
            "When you conjure a weapon of pure flame, roll+CON.\n* On a 10+ choose two of the following tags, on a 7-9 choose one. You may treat your INT as your STR or DEX in regards to making attacks with this weapon. The weapon always begins with the fiery, touch, dangerous, and 3 uses tags. Each attack with the weapon consumes one use.\n\n\n\n- hand\n\n- thrown, near\n\n- +1 damage\n\n- remove the dangerous tag",
        "explanation": "",
        "dice": ["2d6+CON"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "fighting_fire_with_fire",
        "name": "Fighting Fire With Fire",
        "description":
            "When you take damage, and that damage is odd (after armor) the flames within you come to your aid. Roll 1d4 and either add that many uses to your burning brand (if active), take that result forward to summon your burning brand, or reduce the damage by that amount, your choice.",
        "explanation": "",
        "dice": ["1d4"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "zuko_style",
        "name": "Zuko Style",
        "description":
            "When you bend a flame to your will, roll+WIS.\n* On a 10+ it does as you command, taking the shape and movement you desire for as long as it has fuel on which to burn.\n* On a 7-9 the effect is short-lived, lasting only a moment.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "give_me_fuel_give_me_fire",
        "name": "Give Me Fuel Give Me Fire",
        "description":
            "When you **gaze intensely into someone eyes**, you may ask their player \"what fuels the flames of your desire?\" they'll answer with the truth, even if the character does not know or would otherwise keep this hidden.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "hand_crafted",
        "name": "Hand Crafted",
        "description":
            "You may use your hands in place of tools and fire to craft metal objects. Mundane weapons, armor and metal jewelry can all be formed from their raw components. You may unmake these things, as well, but to do so without time and safety might require that you Defy Danger first.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "lore_of_flame",
        "name": "Lore of Flame",
        "description":
            "When you **stare into a source of fire, looking for answers**, roll+WIS On a hit, the GM will tell you something new and interesting about the current situation.\n* On a 10+, the GM will give you good detail.\n* On a 7-9, the GM will give you an impression. If you already know all there is to know, the GM will tell you that.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "burns_twice_as_bright",
        "name": "Burns Twice As Bright",
        "description":
            "When you **channel the flames of fate**, you may treat a missed roll as a 7-9 or a 7-9 result as a 10+. This may be a roll you or another character has made. Tell the GM something you've lost; an emotion, a memory or some innate piece of your being. You may not use this move again until you've used Burns Half As Long.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "burns_half_as_long",
        "name": "Burns Half As Long",
        "description":
            "You gain this move when you gain Burns Twice as Bright.\n\nWhen you sacrifice a victory to the flames of fate, treat any roll of 10+ as a miss.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "this_killing_fire",
        "name": "This Killing Fire",
        "description":
            "Add the following tags to your options for Burning Brand: **messy, forceful, reach, near, far**",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "firebrand",
        "name": "Firebrand",
        "description":
            "When you **introduce a new idea to an NPC**, roll+CHA.\n* On a 10+ They believe the idea to be their own and take to it with fervor\n* On a 7-9, Their passion fades after a day or two. On a miss, they respond negatively, speaking out against the idea.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "ogdru_jahad",
        "name": "Ogdru Jahad",
        "description":
            "Gain the Wizard move Ritual. The GM will always tell you what you have to sacrifice to gain the effect you desire.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "moth_to_the_flame",
        "name": "Moth To The Flame",
        "description":
            "When you tempt a weak mind with your inner fire, roll+WIS.\n* On a 10+ their will is suppressed, they'll follow you and do as you desire, so long as nothing startles or surprises them.\n* On a 7-9, the effect is only strong enough to distract or confuse them. On a miss, they become agitated and upset, your fire having sparked their hidden desires.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "burning_bridges",
        "name": "Burning Bridges",
        "description":
            "When you would take your last breath, don't. Instead, you may erase one of your Bonds. This is permanent and lowers your total available Bonds forever. You are alive and have 1d6 hp. If you have no more Bonds, take your last breath as normal.",
        "explanation": "",
        "dice": ["1d6"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "the_enkindler",
        "name": "The Enkindler",
        "description":
            "When you bolster the courage of others roll+CHA.\n* On a 10+ they shake off all fear and doubt, becoming brave in an instant.\n* On a 7-9, this effect is fleeting, they realize its superficiality and resort to cowardice after a moment or two. On a miss, they're cowed or terrified by your presence.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "sick_burn",
        "name": "Sick Burn",
        "description":
            "When you insult an NPC, roll + CHA.\n* On a 10+ you leave them no room to react, they bear your insult and the scorn of all who hear it.\n* On a 7-9 you cross a line, they will have their revenge, someday. On a miss you've gone too far, they blow up here and now.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "from_hells_heart",
        "name": "From Hell's Heart",
        "description":
            "Whenever you summon fire with any of your moves, you can replace it with the black fires of hell itself. This fire does not burn with heat and ignores armor, scorching the soul itself. Those creatures without souls cannot be harmed by this type of flame.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "burning_ring_of_fire",
        "name": "Burning Ring Of Fire",
        "description":
            "When you **fuse a willing person's soul to yours**, roll+CHA. On a hit you are bound together, able to sense each other at any distance, as well as sharing your emotional state.\n* On a 7-9, the connection is unstable and dangerous, when you take a debility, so do they (and vice versa).\n* On a miss, the branding is rejected and you both erase any Bonds you have to each other. You may write new Bonds with them at the End of Session as usual. This fusion, once performed, cannot be undone by mortal means.",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "fanning_the_flame",
        "name": "Fanning The Flame",
        "description":
            "You may apply the effects of your Firebrand move to a group of people - a dozen or so - all at once.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "watch_the_world_burn",
        "name": "Watch the World Burn",
        "description":
            "When you **open a channel to the burning planes and call a firestorm**, tell the GM what you're sacrificing and roll+WIS. The sky opens up and fire pours like rain from it within an area about equal to a small village. Everyone and everything in the area takes damage as appropriate.\n* On a 10+ you can extinguish the storm with a little effort.\n* On a 7-9 the fires rage out of your control, spreading and gusting where they are carried by wind and weather. On a miss, something cruel, intelligent and hungry comes with the storm.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "immolator", "name": "Immolator", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "herculean_appetites",
        "name": "Herculean Appetites",
        "description":
            "Others may content themselves with just a taste of wine, or dominion over a servant or two, but you want more. Choose two appetites. While pursuing one of your appetites if you would roll for a move, instead of rolling 2d6 you roll 1d6+1d8. If the d6 is the higher die of the pair, the GM will also introduce a complication or danger that comes about due to your heedless pursuits.\n\n* Pure destruction\n* Power over others\n* Mortal pleasures\n* Conquest\n* Riches and property\n* Fame and glory",
        "explanation": "",
        "dice": ["2d6", "1d6", "1d8"],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "the_upper_hand",
        "name": "The Upper Hand",
        "description":
            "You take +1 ongoing to last breath rolls. When you take your last breath, on a 7-9 you make an offer to Death in return for your life. If Death accepts he will return you to life. If not, you die.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "musclebound",
        "name": "Musclebound",
        "description": "While you wield a weapon it gains the forceful and messy tags.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "what_are_you_waiting_for",
        "name": "What Are You Waiting For?",
        "description":
            "When you cry out a challenge to your enemies, roll+Con.\n\n* On a 10+ they treat you as the most obvious threat to be dealt with and ignore your companions, take +2 damage ongoing against them.\n* On a 7-9 only a few (the weakest or most foolhardy among them) fall prey to your taunting.",
        "explanation": "",
        "dice": ["2d6+CON"],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "starting"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "full_plate_and_packing_steel",
        "name": "Full Plate and Packing Steel",
        "description": "You ignore the clumsy tag on armor you wear.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "unencumbered_unharmed",
        "name": "Unencumbered, Unharmed",
        "description":
            "So long as you are below your Load and neither wear armor nor carry a shield, take +1 armor.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "still_hungry",
        "name": "Still Hungry",
        "description": "Choose an additional appetite.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "appetite_for_destruction",
        "name": "Appetite for Destruction",
        "description":
            "Take a move from the fighter, bard or thief class list. You may not take multiclass moves from those classes.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "my_love_for_you_is_like_a_truck",
        "name": "My Love For You Is Like a Truck",
        "description":
            "When you perform a feat of strength, name someone present whom you have impressed and take +1 forward to parley with them.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "what_is_best_in_life",
        "name": "What Is Best In Life",
        "description":
            "At the end of a session, if during this session you have crushed your enemies, seen them driven before you, or have heard the lamentations of their kinfolk, mark XP.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "wide_wanderer",
        "name": "Wide Wanderer",
        "description":
            "You've traveled the wide world over. When you arrive someplace ask the GM about any important traditions, rituals, and so on, they'll tell you what you need to know.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "usurper",
        "name": "Usurper",
        "description":
            "When you prove yourself superior to a person in power, take +1 forward with their followers, underlings, and hangers on.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "khan_of_khans",
        "name": "Khan Of Khans",
        "description":
            "Your hirelings always accept the gratuitous fulfillment of one of your appetites as payment.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "samson",
        "name": "Samson",
        "description":
            "You may take a debility to immediately break free of any physical or mental restraint.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "smash",
        "name": "Smash!",
        "description":
            "When you hack and slash, on a 12+ deal your damage and choose something physical your target has (a weapon, their position, a limb): they lose it.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "indestructible_hunger",
        "name": "Indestructible Hunger",
        "description":
            "When you take damage you can choose to take 1 ongoing until you sate one of your appetites instead of taking the damage. If you already have this penalty you cannot choose this option.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "eye_for_weakness",
        "name": "Eye For Weakness",
        "description":
            "When you discern realities add \"What here is weak or vulnerable?\" to the list of questions you can ask.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "on_the_move",
        "name": "On The Move",
        "description":
            "When you defy a danger caused by movement (maybe falling off a narrow bridge or rushing past an armed guard) take +1.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced1"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "a_good_day_to_die",
        "name": "A Good Day To Die",
        "description":
            "As long as you have less than your Con in current HP (or 1, whichever is higher) take +1 ongoing.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "kill_em_all",
        "name": "Kill 'Em All",
        "description":
            "**Requires:** Appetite for Destruction\n\nTake another move from the fighter, bard or thief class list. You may not take multiclass moves from those classes.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "war_cry",
        "name": "War Cry",
        "description":
            "When you enter battle with a show of force (a shout, a rallying cry, a battle dance) roll+Cha.\n\n* On a 10+ both,\n* On a 7-9 one or the other.\n\t* Your allies are rallied and take +1 forward\n\t* Your enemies feel fear and act accordingly (avoiding you, hiding, attacking with fear driven abandon)",
        "explanation": "",
        "dice": ["2d6+CHA"],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "mark_of_might",
        "name": "Mark Of Might",
        "description":
            "When you take this move and spend some uninterrupted time reflecting on your past glories you may mark yourself with a symbol of your power (a long braid tied with bells, ritual scars or tattoos, etc.) Any intelligent mortal creature who sees this symbol knows instinctively that you are a force to be reckoned with and treats you appropriately.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "more_always_more",
        "name": "More! Always More!",
        "description":
            "When you satisfy an appetite to the extreme (destroying something unique and significant, gaining enormous fame, riches, power, etc.) you may choose to resolve it. Cross it off the list and mark XP. While you may pursue that appetite again, you no longer feel the burning desire you once did. In its place, choose a new appetite from the list or write your own.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "the_one_who_knocks",
        "name": "The One Who Knocks",
        "description":
            "When you defy danger, on a 12+ you turn the danger back on itself, the GM will describe how.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "healthy_distrust",
        "name": "Healthy Distrust",
        "description":
            "Whenever the unclean magic wielded by mortal men causes you to defy danger, treat any result of 6 as a 7-9.",
        "explanation": "",
        "dice": [],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      }),
      Move.fromJson({
        "_meta": {"language": "EN", "createdBy": "__repo__"},
        "key": "for_the_blood_god",
        "name": "For The Blood God",
        "description":
            "You are initiated in the old ways, the ways of sacrifice. Choose something your gods (or the ancestor spirits, or your totem, etc) value-gold, blood, bones or the like. When you sacrifice those things as per your rites and rituals, roll+Wis.\n\n* On a 10+ the GM will grant you insight into your current trouble or a boon to help you.\n* On a 7-9 the sacrifice is not enough and your gods take of your flesh as well, but still grant you some insight or boon.\n* On a miss, you earn the ire of the fickle spirits.",
        "explanation": "",
        "dice": ["2d6+WIS"],
        "classKeys": [
          {"key": "barbarian", "name": "Barbarian", "type": "CharacterClass"}
        ],
        "tags": [],
        "category": "advanced2"
      })
    ];
