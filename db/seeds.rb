# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#

#   Mayor.create(name: 'Emanuel', city: cities.first)


mediums = Medium.create([
	{ name: 'TV' },
	{ name: 'Movies' },
	{ name: 'Songs' },
	{ name: 'Other' },
])

categories = Category.create([
	{ name: 'Canadian Heritage Moments' },
	{ name: 'Beetles Songs' },
	{ name: 'Action Movies' },
	{ name: 'Disney' },
	{ name: 'Classics'},
	{ name: 'Sci-Fi/Fantasy'},
	{ name: 'Comedy'},
	{ name: 'Other'}
])

questiontypes = QuestionType.create([
	{ name: 'Guess the artist\'s name' },
	{ name: 'Guess the title' },
	{ name: 'Guess the next word' },
	{ name: 'Guess the next line' },
])

questions = Question.create([
	{questiontext: "I'm gonna make him an offer he can't refuse.",answertext:"THE GODFATHER, 1972",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "Toto, I've a feeling we're not in Kansas anymore.",answertext:"THE WIZARD OF OZ, 1939",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "Here's looking at you, kid.",answertext:"CASABLANCA, 1942",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "Go ahead, make my ___.",answertext:"Day. From SUDDEN IMPACT, 1983",difficulty:1, questiontype_id:3, category_id:5,medium_id:2},
	{questiontext: "May the Force be with you.",answertext:"STAR WARS, 1977",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "I love the smell of napalm in the morning.",answertext:"APOCALYPSE NOW, 1979",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "Love means never having to say you're sorry.",answertext:"LOVE STORY, 1970",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "E.T. phone home.",answertext:"E.T. THE EXTRA-TERRESTRIAL, 1982",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "Bond.",answertext:"James Bond. From DR. NO, 1962",difficulty:1, questiontype_id:4, category_id:3,medium_id:2},
	{questiontext: "There's no place like home.",answertext:"THE WIZARD OF OZ, 1939",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "Show me the money!",answertext:"JERRY MAGUIRE, 1996",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "You can't handle the truth!",answertext:"A FEW GOOD MEN, 1992",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "I'll have what she's having.",answertext:"WHEN HARRY MET SALLY, 1989",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "You're gonna need a bigger boat.",answertext:"JAWS, 1975",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "I'll be back.",answertext:"THE TERMINATOR, 1984",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "If you build it",answertext:" he will come. From FIELD OF DREAMS, 1989",difficulty:1, questiontype_id:4, category_id:5,medium_id:2},
	{questiontext: "My mama always said life was like a box of chocolates.",answertext:"You never know what you're gonna get. From FORREST GUMP, 1994",difficulty:1, questiontype_id:4, category_id:5,medium_id:2},
	{questiontext: "I see dead people.",answertext:"THE SIXTH SENSE, 1999",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "It's alive!",answertext:"It's alive! From FRANKENSTEIN, 1931",difficulty:1, questiontype_id:4, category_id:5,medium_id:2},
	{questiontext: "Houston, we have a problem.",answertext:"APOLLO 13, 1995",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "You've got to ask yourself one question: 'Do I feel lucky?'",answertext:"Well, do ya, punk? From DIRTY HARRY, 1971",difficulty:1, questiontype_id:4, category_id:5,medium_id:2},
	{questiontext: "You had me at \"hello.\"",answertext:"JERRY MAGUIRE, 1996",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "A boy's best friend is his ______.",answertext:"Mother, From PSYCHO, 1960",difficulty:1, questiontype_id:3, category_id:5,medium_id:2},
	{questiontext: "Greed, for lack of a better word, is ______.",answertext:"Good. From WALL STREET, 1987",difficulty:1, questiontype_id:3, category_id:5,medium_id:2},
	{questiontext: "Keep your friends close,",answertext:"but your enemies closer. From THE GODFATHER II, 1974",difficulty:1, questiontype_id:4, category_id:5,medium_id:2},
	{questiontext: "Say \"hello\" to my little friend!",answertext:"SCARFACE, 1983",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "Elementary, my dear _______.",answertext:"Watson. From THE ADVENTURES OF SHERLOCK HOLMES, 1939",difficulty:1, questiontype_id:3, category_id:5,medium_id:2},
	{questiontext: "Take your stinking paws off me, you damned dirty ___.",answertext:"ape. From PLANET OF THE APES, 1968",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "Here's Johnny!",answertext:"THE SHINING, 1980",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "Hasta la vista, baby.",answertext:"TERMINATOR 2: JUDGMENT DAY, 1991",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "Soylent Green is ______!",answertext:"people. From SOYLENT GREEN, 1973",difficulty:1, questiontype_id:3, category_id:5,medium_id:2},
	{questiontext: "Open the pod bay doors, HAL.",answertext:"2001: A SPACE ODYSSEY, 1968",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "Oh, no, it wasn't the airplanes. It was Beauty killed the Beast.",answertext:"KING KONG, 1933",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "My precious.",answertext:"THE LORD OF THE RINGS: TWO TOWERS, 2002",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "A martini. Shaken, not stirred.",answertext:"GOLDFINGER, 1964",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "I feel the need - the need for speed!",answertext:"TOP GUN, 1986",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "I'm the king of the world!",answertext:"TITANIC, 1997",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "There is only one Lord of the Ring, only one who can bend it to his will.",answertext:"And he does not share power. From LOTR: The Fellowship of the Ring, 2001",difficulty:1, questiontype_id:4, category_id:6,medium_id:2},
	{questiontext: "That there's some good in this world, Mr. Frodo...",answertext:"and it's worth fighting for. From LOTR: The Two Towers, 2002",difficulty:1, questiontype_id:4, category_id:6,medium_id:2},
	{questiontext: "Even the smallest person can change the course of the future",answertext:"The Lord of the Rings: The Fellowship of the Ring, 2001",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "We swears, to serve the master of the Precious. We will swear on... on the",answertext:"Precious! From LOTR: The Two Towers, 2002",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "I am Gandalf the White. And I come back to you now...",answertext:"at the turn of the tide. From LOTR: Return of the King, 2003",difficulty:1, questiontype_id:4, category_id:6,medium_id:2},
	{questiontext: "I would rather share one lifetime with you than face all the Ages of this world alone.",answertext:"The Lord of the Rings: The Fellowship of the Ring, 2001",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "A day may come when the courage of men fails...",answertext:"but it is not THIS day. From LOTR: Return of the King, 2003",difficulty:1, questiontype_id:4, category_id:6,medium_id:2},
	{questiontext: "You are the luckiest, the canniest, and the most reckless man I ever knew. Bless you, ______.",answertext:"laddie. From LOTR: The Two Towers, 2002",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "I'm glad to be with you, Samwise Gamgee...",answertext:"here at the end of all things. From LOTR: Return of the King, 2003",difficulty:1, questiontype_id:4, category_id:6,medium_id:2},
	{questiontext: "Great, kid. Don't get ______",answertext:"cocky. From Star Wars: A New Hope, 1977",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "Luke, you can destroy the Emperor. He has foreseen this.",answertext:"It is your destiny. From Star Wars: The Empire Strikes Back, 1980",difficulty:1, questiontype_id:4, category_id:6,medium_id:2},
	{questiontext: "It's a trap!",answertext:"Star Wars: Return of the Jedi, 1983",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "Why you stuck-up, half-witted, scruffy-looking _________!",answertext:"nerf-herder. From Star Wars: The Empire Strikes Back, 1980",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "Lando's not a system he's a ___!",answertext:"man. From Star Wars: The Empire Strikes Back, 1980",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "I find your lack of faith _________.",answertext:"disturbing. From Star Wars: A New Hope, 1977",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "Help me Obi-Wan Kenobi, you're my only _____.",answertext:"hope. From Star Wars: A New Hope, 1977",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "Laugh it up, Fuzz ball.",answertext:"Star Wars: The Empire Strikes Back, 1980",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "No. I am your Father.",answertext:"Star Wars: The Empire Strikes Back, 1980",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "Great shot kid, that was one in a million.",answertext:"Star Wars: A New Hope, 1977",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "You may dispense with the pleasantries, Commander.",answertext:"Star Wars: Return of the Jedi, 1983",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "I'm like a bad penny, I always turn up.",answertext:"Indiana Jones: The Last Crusade, 1989",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "You want to talk to God? Let's go see him together, I've got nothing better to do.",answertext:"Indiana Jones: Raiders of the Lost Ark, 1981",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "Bad dates.",answertext:"Indiana Jones: Raiders of the Lost Ark, 1981",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "DON'T call me Junior!",answertext:"Indiana Jones: The Last Crusade, 1989",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "What we do in life echoes in eternity.",answertext:"Gladiator, 2000",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "We don't negotiate with terrorists.",answertext:"Land of the Dead, 2005",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "I'm just one stomach flu away from my goal weight.",answertext:"The Devil Wears Prada, 2006",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "Why is the rum always gone?",answertext:"Pirates of the Caribbean: Dead Man's Chest, 2006",difficulty:1, questiontype_id:2, category_id:6,medium_id:2},
	{questiontext: "Yeah, it's the Juggernaut, _____!",answertext:"Bitch! From X-Men: The Last Stand, 2006",difficulty:1, questiontype_id:3, category_id:6,medium_id:2},
	{questiontext: "Find a truly original idea. It is the only way I will ever distinguish myself. It is the only way I will ever matter.",answertext:"A Beautiful Mind, 2001",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "Fish are friends, not food.",answertext:"Finding Nemo, 2003",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "Sunnyside is a place of ruin and despair, ruled by an evil bear who smells of strawberries!",answertext:"Toy Story 3, 2010",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "As far back as I can remember, I always wanted to be a gangster.",answertext:"GoodFellas, 1990",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "Now, you got a corpse in a car minus a head in the garage. Take me to it.",answertext:"Pulp Fiction, 1994",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "Failure is not an option.",answertext:"Apollo 13, 1995",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "That'll do, pig, that'll do.",answertext:"Babe, 1995",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "...That they may take our lives, but they will never take our ________",answertext:"freedom. From Braveheart, 1995",difficulty:1, questiontype_id:3, category_id:3,medium_id:2},	{questiontext: "You got knocked the fuck out!",answertext:"Friday, 1995",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "A census taker once tried to test me. I ate his liver with some fava beans and a nice Chianti.",answertext:"The Silence of the Lambs , 1991",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "To Infinity and Beyond!",answertext:"Toy Story, 1995",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "The greatest trick the devil ever pulled was convincing the world he didn't exist.",answertext:"The Usual Suspects, 1995",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "I guess that was your accomplice in the wood chipper?",answertext:"Fargo, 1996",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "Get off my plane.",answertext:"Air Force One, 1997",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "Let me ask you a question, and be honest. Do I make you _____?",answertext:"horny? From Austin Powers: International Man of Mystery, 1997",difficulty:1, questiontype_id:3, category_id:7,medium_id:2},
	{questiontext: "You know what the difference is between you and me? I make this look ____.",answertext:"GOOD. From Men in Black, 1997",difficulty:1, questiontype_id:3, category_id:7,medium_id:2},
	{questiontext: "Whoever saves one life, saves the world entire.",answertext:"Schindler's List, 1993",difficulty:1, questiontype_id:2, category_id:5,medium_id:2},
	{questiontext: "Do you understand the words that are comin' out of my mouth?",answertext:"Rush Hour, 1998",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "Ssssmmokin'",answertext:"The Mask, 1994",difficulty:1, questiontype_id:2, category_id:7,medium_id:2},
	{questiontext: "It's only after we've lost everything that we're free to do anything",answertext:"Fight Club, 1999",difficulty:1, questiontype_id:2, category_id:3,medium_id:2},
	{questiontext: "Fear is the path to the dark side. Fear leads to anger. Anger leads to hate.",answertext:"Hate leads to suffering. From Star Wars: A Phantom Menace, 1999",difficulty:1, questiontype_id:4, category_id:6,medium_id:2},
	{questiontext: "This is madness!",answertext:"This is Sparta! From 300, 2000",difficulty:1, questiontype_id:4, category_id:3,medium_id:2},
	{questiontext: "Well then let's cut the bottom, out of the basket",answertext:"I need these baskets back, 2001",difficulty:1, questiontype_id:4, category_id:1,medium_id:1},	
])
