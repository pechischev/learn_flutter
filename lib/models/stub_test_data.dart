import 'dart:convert';

const testData = {
  'title': "Video Games",
  'questions': [
    {
      'id': 1,
      'title': "What year was the game Team Fortress 2 released?",
      'correct_answer': "2007",
      'answers': [
        "2009",
        "2007",
        "2005",
        "2010"
      ]
    },
    {
      'id': 2,
      'title': "The Mann Co. Store from Team Fortress 2 has the slogan 'We hire mercenaries and get in fights'.",
      'correct_answer': 'False',
      'answers': [
        'True',
        'False'
      ]
    },
    {
      'id': 3,
      'title': "Who is Sonic's sidekick?",
      'correct_answer': 'Tails',
      'answers': [
        'Shadow',
        'Amy',
        'Tails',
        'Knuckles'
      ]
    },
    {
      'id': 4,
      'title': 'What was the name of the cancelled sequel of Team Fortress?',
      'correct_answer': 'Team Fortress 2: Brotherhood of Arms',
      'answers': [
        'Team Fortress 2: Desert Mercenaries',
        'Team Fortress 2: Brotherhood of Arms',
        'Team Fortress 2: Operation Gear Grinder',
        'Team Fortress 2: Return to Classic'
      ]
    },
    {
      'id': 5,
      'title': 'Half-Life by Valve uses the GoldSrc game engine, which is a highly modified version of what engine?',
      'correct_answer': 'Quake Engine',
      'answers': [
        'Doom Engine',
        'Quake Engine',
        'id Engine',
        'Source Engine'
      ]
    },
    {
      'id': 6,
      'title': 'What ingredient is NOT used to craft a cake in Minecraft?',
      'correct_answer': 'Bread',
      'answers': [
        'Bread',
        'Wheat',
        'Milk',
        'Egg'
      ]
    },
    {
      'id': 7,
      'title': "Deus Ex (2000) does not feature the World Trade Center because it was destroyed by terrorist attacks according to the game's plot.",
      'correct_answer': 'True',
      'answers': [
        'True',
        'False'
      ]
    },
    {
      'id': 8,
      'title': "In the game Dead by Daylight, the killer Michael Myers is refered to as 'The Shape'.",
      'correct_answer': 'True',
      'answers': [
        'True',
        'False'
      ]
    },
    {
      'id': 9,
      'title': "In Counter-Strike: Global Offensive, what's the rarity of discontinued skins called?",
      'correct_answer': 'Contraband',
      'answers': [
        'Discontinued',
        'Diminshed',
        'Contraband',
        'Limited'
      ]
    },
    {
      'id': 10,
      'title': "Which of the following weapons in 'Counter-Strike: Global Offensive' does not have a right-click function?",
      'correct_answer': 'XM1014',
      'answers': [
        'SG553',
        'R8 Revolver',
        'USP-S',
        'XM1014'
      ]
    }
  ]
};

var testDataJson = json.encode(testData);
