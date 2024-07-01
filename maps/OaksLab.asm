	object_const_def
	const OAKSLAB_OAK
	const OAKSLAB_BLUE
	const OAKSLAB_POKE_BALL1
	const OAKSLAB_POKE_BALL2
	const OAKSLAB_POKE_BALL3
	const OAKSLAB_POKEDEX1
	const OAKSLAB_POKEDEX2

OaksLab_MapScripts:
	def_scene_scripts
	scene_script OaksLabNoop1Scene,   SCENE_OAKSLAB_NOOP
	scene_script OaksLabMeetOakScene, SCENE_OAKSLAB_MEET_OAK
	scene_script OaksLabNoop2Scene,   SCENE_OAKSLAB_RIVAL_BATTLE

	def_callbacks

OaksLabNoop1Scene:
OaksLabNoop2Scene:
	end

OaksLabMeetOakScene:
	applymovement PLAYER, OaksLabPlayerWalkInMovement
	turnobject OAKSLAB_BLUE, UP
	setscene SCENE_OAKSLAB_RIVAL_BATTLE
	jumptext OaksLabIntroConversationText

;scripts
OakScript:
	checkevent EVENT_GOT_POKEDEX
	iftrue .EvaluatePokedex
;deliver parcel
	checkevent EVENT_GOT_OAKS_PARCEL
	iftrue DeliverOaksParcelScript
;choose pokemon
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iffalse .OakWhichPokemonDoYouWant
;rival battle
	checkscene
	ifequal SCENE_OAKSLAB_RIVAL_BATTLE, .OakWildPokemon
;else
	jumptextfaceplayer OaksLabPokemonAwaitText

.EvaluatePokedex
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEBALLS_FROM_OAK
	iffalse .OakGiveBalls
	writetext OakLabEvaluateDexText
	waitbutton
	special ProfOaksPCBoot
	writetext OakLabOakGoodbyeText
	waitbutton
	closetext
	end

.OakWhichPokemonDoYouWant
	jumptextfaceplayer OaksLabWhichPokemonDoYouWantText

.OakWildPokemon
	jumptextfaceplayer OaksLabWildPokemonText

.OakGiveBalls
	writetext OaksLabGetPokeballsText
	playsound SFX_ITEM
	waitsfx
	promptbutton
	giveitem POKE_BALL, 5
	writetext OaksLabPokeballExplainationText
	waitbutton
	closetext
	setevent EVENT_GOT_POKEBALLS_FROM_OAK
	end

OaksLabTryToLeaveScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue OaksLabRivalBattleScript
	opentext
	writetext OaksLabDontLeaveText
	waitbutton
	closetext
	applymovement PLAYER, OaksLabDontLeaveMovement
	end

CharmanderPokeBallScript:
	checkevent EVENT_OAKS_LAB_OAK
	iftrue LookAtPokeballsEarlyScript
;	opentext
;	setval CHARMANDER
;	special ShowPokedexEntry
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	setval CHARMANDER
	special UnusedSetSeenMon
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OaksLabTakeCharmanderText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL1
	setevent EVENT_GOT_CHARMANDER_FROM_OAK
	writetext OaksLabChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, CHARMANDER
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke CHARMANDER, 5
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjump RivalTakesSquirtle
	
SquirtlePokeBallScript:
	checkevent EVENT_OAKS_LAB_OAK
	iftrue LookAtPokeballsEarlyScript
;	opentext
;	setval SQUIRTLE
;	special ShowPokedexEntry
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	setval SQUIRTLE
	special UnusedSetSeenMon
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OaksLabTakeSquirtleText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL2
	setevent EVENT_GOT_SQUIRTLE_FROM_OAK
	writetext OaksLabChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRTLE, 5
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjump RivalTakesBulbasaur
	
BulbasaurPokeBallScript:
	checkevent EVENT_OAKS_LAB_OAK
	iftrue LookAtPokeballsEarlyScript
;	opentext
;	setval BULBASAUR
;	special ShowPokedexEntry
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	setval BULBASAUR
	special UnusedSetSeenMon
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OaksLabTakeBulbasaurText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL3
	setevent EVENT_GOT_BULBASAUR_FROM_OAK
	writetext OaksLabChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BULBASAUR, 5
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	sjump RivalTakesCharmander

OaksLabDidntChooseStarterScript:
	writetext OaksLabDidntChooseStarterText
	waitbutton
	closetext
	end

RivalTakesCharmander:
	applymovement OAKSLAB_BLUE, RivalTakesCharmanderMovement
	opentext
	writetext OaksLabRivalTakesPokemonText
	disappear OAKSLAB_POKE_BALL1
;	writetext OaksLabRivalReceivedCharmanderText
	waitbutton
	closetext
;	setscene SCENE_OAKSLAB_RIVAL_BATTLE
	end

RivalTakesSquirtle:
	readvar VAR_FACING
	ifequal UP, .LongSquirtle
	applymovement OAKSLAB_BLUE, RivalTakesSquirtleMovementShort
	sjump .FinishSquirtle
.LongSquirtle
	applymovement OAKSLAB_BLUE, RivalTakesSquirtleMovementLong
	; fallthrough
.FinishSquirtle
	opentext
	writetext OaksLabRivalTakesPokemonText
	disappear OAKSLAB_POKE_BALL2
;	writetext OaksLabRivalReceivedSquirtleText
	waitbutton
	closetext
;	setscene SCENE_OAKSLAB_RIVAL_BATTLE
	end

RivalTakesBulbasaur:
	applymovement OAKSLAB_BLUE, RivalTakesBulbasaurMovement
	opentext
	writetext OaksLabRivalTakesPokemonText
	disappear OAKSLAB_POKE_BALL3
;	writetext OaksLabRivalReceivedBulbasaurText
	waitbutton
	closetext
;	setscene SCENE_OAKSLAB_RIVAL_BATTLE
	end

OaksLastPokemonScript:
	jumptext OaksPokeBallText
;	end

LookAtPokeballsEarlyScript:
	jumptext OaksLabThoseArePokeballsText
;	end
	
OaksLabRivalBattleScript:
	playmusic MUSIC_RIVAL_ENCOUNTER
	turnobject OAKSLAB_BLUE, DOWN
	turnobject PLAYER, UP
	opentext
	writetext OaksLabRivalBattleChallengeText
	waitbutton
	closetext
	readvar VAR_XCOORD
	ifequal 5, .Skip
	applymovement OAKSLAB_BLUE, OaksLabRivalStepLeftMovement
.Skip
	checkevent EVENT_GOT_CHARMANDER_FROM_OAK
	iftrue .RivalBattleSquirtleScript
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .RivalBattleBulbasaurScript
	applymovement OAKSLAB_BLUE, OaksLabRivalBattleCharmanderMovement
	sjump OaksLabRivalBattleStart

.RivalBattleSquirtleScript
	applymovement OAKSLAB_BLUE, OaksLabRivalBattleSquirtleMovement
	sjump OaksLabRivalBattleStart

.RivalBattleBulbasaurScript
	applymovement OAKSLAB_BLUE, OaksLabRivalBattleBulbasaurMovement
	; fallthrough
OaksLabRivalBattleStart:
	setlasttalked OAKSLAB_BLUE
	winlosstext OaksLabRivalBattleWinText, OaksLabRivalBattleLossText
	checkevent EVENT_GOT_SQUIRTLE_FROM_OAK
	iftrue .RivalBulbasaur
	checkevent EVENT_GOT_BULBASAUR_FROM_OAK
	iftrue .RivalCharmander
	loadtrainer RIVAL1, RIVAL1_1_SQUIRTLE
	loadmem VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump .FinishRival
.RivalBulbasaur:
	loadtrainer RIVAL1, RIVAL1_1_BULBASAUR
	loadmem VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump .FinishRival
.RivalCharmander:
	loadtrainer RIVAL1, RIVAL1_1_CHARMANDER
	loadmem VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	sjump .FinishRival

.FinishRival:
	opentext
	writetext OaksLabAfterRivalBattleText
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	scall OaksLabRivalGoesAroundScript
	applymovement OAKSLAB_BLUE, OaksLabRivalLeavesMovement
	pause 15
	disappear OAKSLAB_BLUE
	playsound SFX_EXIT_BUILDING
	setscene SCENE_OAKSLAB_NOOP
	setmapscene PALLET_TOWN, SCENE_PALLETTOWN_NOOP
	special HealParty
	waitsfx
	special RestartMapMusic
	end

OaksLabRivalGoesAroundScript:
	readvar VAR_XCOORD
	ifequal 5, .Left
	applymovement OAKSLAB_BLUE, OaksLabRivalStepRightMovement
	end
.Left
	applymovement OAKSLAB_BLUE, OaksLabRivalStepLeftMovement
	end

DeliverOaksParcelScript:
	moveobject OAKSLAB_BLUE, 4, 7
	faceplayer
	opentext
	writetext OaksLabHowIsMyPokemonText
	playsound SFX_ITEM
	takeitem OAKS_PARCEL
	waitsfx
	promptbutton
	writetext OaksLabParcelThanksText
	waitbutton
	closetext
	turnobject OAKSLAB_OAK, DOWN
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext OaksLabRivalGrampsText
	waitbutton
	closetext
	scall OaksLabRivalParcelEntranceScript
	opentext
	writetext OaksLabWhatDidYouCallMeForText
	waitbutton
	closetext
	special RestartMapMusic
	opentext
	writetext OaksLabOakHaveRequestText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	disappear OAKSLAB_POKEDEX1
	disappear OAKSLAB_POKEDEX2
	promptbutton
	writetext OaksLabOaksDreamGivePagerText
;	writetext OaksLabOaksDreamText
;	promptbutton
;	writetext OaksLabOakGivePagerText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_CARD
	writetext GotPagerCardText
	promptbutton
	writetext OaksLabOakExplainsPagerText
	waitbutton
;	closetext
;	opentext
	setlasttalked OAKSLAB_BLUE
	faceplayer
	writetext OaksLabRivalLeavesAfterPokedexText
	waitbutton
	closetext
	playmusic MUSIC_RIVAL_ENCOUNTER
	applymovement OAKSLAB_BLUE, OaksLabRivalLeavesMovement
	pause 15
	disappear OAKSLAB_BLUE
	setevent EVENT_GOT_POKEDEX
;	setflag ENGINE_MOBILE_SYSTEM
	setmapscene VIRIDIAN_CITY, SCENE_VIRIDIANCITY_MAP_CARD
	setmapscene ROUTE_22, SCENE_ROUTE22_RIVAL
	setscene SCENE_OAKSLAB_NOOP
	special RestartMapMusic
	opentext
	writetext OaksLabOakGivePhoneNumberText
	waitbutton
	closetext
	addcellnum PHONE_OAK
	opentext
	writetext GotOaksNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	jumptext OaksLabOakTalkToMomText
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end
.pagercardname
	db "PAGER CARD@"

OaksLabRivalParcelEntranceScript:
	readvar VAR_FACING
	ifequal DOWN, .Short
	appear OAKSLAB_BLUE
	applymovement OAKSLAB_BLUE, OaksLabRivalWalksInMovement
	end
.Short
	moveobject OAKSLAB_BLUE, 4, 6
	appear OAKSLAB_BLUE
	applymovement OAKSLAB_BLUE, OaksLabRivalWalksInMovementShort
	end

BlueScript:
	checkevent EVENT_OAKS_LAB_OAK
	iftrue .OakNotHere
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue .LooksStronger
	jumptextfaceplayer OaksLabRivalNotGreedyText
.OakNotHere
	jumptextfaceplayer OaksLabRivalOakNotHereText
.LooksStronger
	jumptextfaceplayer OaksLabRivalMineLooksStrongerText

OaksAssistantScript:
	jumptextfaceplayer OaksAssistantText

OaksLabGirlScript:
	jumptextfaceplayer OaksLabGirlText

OaksLabBookshelf:
	jumpstd DifficultBookshelfScript

OaksLabPoster1:
	jumptext OaksLabPoster1Text

OaksLabPoster2:
	jumptext OaksLabPoster2Text

OaksLabTrashcan:
	jumptext OaksLabTrashcanText

OaksLabPC:
	jumptext OaksLabPCText
	
PokedexScript:
	jumptext OaksLabPokedexText

; movements
OaksLabPlayerWalkInMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step_end

OaksLabDontLeaveMovement:
	step UP
	step_end

RivalTakesCharmanderMovement:
	step DOWN
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

RivalTakesSquirtleMovementShort:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

RivalTakesSquirtleMovementLong:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

RivalTakesBulbasaurMovement:
	step DOWN
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	step UP
	step_end

OaksLabRivalStepRightMovement:
	slow_step RIGHT
	step_end

OaksLabRivalStepLeftMovement:
	slow_step LEFT
	step_end

OaksLabRivalBattleBulbasaurMovement:
	slow_step LEFT
OaksLabRivalBattleSquirtleMovement:
	slow_step LEFT
OaksLabRivalBattleCharmanderMovement:
	slow_step LEFT
	slow_step DOWN
	step_end

OaksLabRivalLeavesMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_end

OaksLabRivalWalksInMovement:
	slow_step UP
OaksLabRivalWalksInMovementShort:
	slow_step UP
	slow_step UP
	slow_step UP
	step_end

; npc text
OaksLabRivalOakNotHereText:
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"
	done
	
OaksLabIntroConversationText:
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"

	para "OAK: <RIVAL>?"
	line "Let me think..."

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#MON here!"

	para "Haha!"

	para "They are inside"
	line "the # BALLs."

	para "When I was young,"
	line "I was a serious"
	cont "#MON trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"

	para "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"

	para "OAK: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

OaksLabWhichPokemonDoYouWantText:
	text "Now, <PLAYER>,"
	line "which #MON do"
	cont "you want?"
	done

OaksLabDidntChooseStarterText:
	text "OAK: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

OaksLabWildPokemonText:
	text "OAK: If a wild"
	line "#MON appears,"
	cont "your #MON can"
	cont "fight against it!"
	done

OaksLabDontLeaveText:
	text "OAK: Hey! Don't go"
	line "away yet!"
	done

OaksLabRivalNotGreedyText:
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

OaksLabTakeCharmanderText:
	text "So! You want the"
	line "fire #MON,"
	cont "CHARMANDER?"
	done

OaksLabTakeSquirtleText:
	text "So! You want the"
	line "water #MON,"
	cont "SQUIRTLE?"
	done

OaksLabTakeBulbasaurText:
	text "So! You want the"
	line "grass #MON,"
	cont "BULBASAUR?"
	done

OaksLabChoseStarterText:
	text "This #MON is"
	line "really energetic!"
	done

OaksLabReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

OaksLabRivalTakesPokemonText:
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

OaksLabRivalMineLooksStrongerText:
	text "<RIVAL>: My"
	line "#MON looks a"
	cont "lot stronger."
	done

OaksLabRivalBattleChallengeText:
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLabRivalBattleWinText:
	text "WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #MON!"
	done

OaksLabRivalBattleLossText:
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	done

OaksLabAfterRivalBattleText:
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#MON fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

OaksLabRaisePokemonText:
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	cont "it fight!"
	done

OaksLabHowIsMyPokemonText:
	text "OAK: Oh, <PLAYER>!"

	para "How is my old"
	line "#MON?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#MON trainer!"

	para "What? You have"
	line "something for me?"
	
	para "<PLAYER> delivered"
	line "OAK's PARCEL."
	done

OaksLabParcelThanksText:
	text "Ah! This is the"
	line "custom # BALL"
	cont "I ordered!"
	cont "Thank you!"
	done

OaksLabRivalGrampsText:
	text "<RIVAL>: Gramps!"
	done

OaksLabWhatDidYouCallMeForText:
	text "<RIVAL>: What did"
	line "you call me for?"
	done

OaksLabOakHaveRequestText:
	text "OAK: Oh right! I"
	line "have a request"
	cont "of you two."

	para "On the desk there"
	line "is my invention,"
	cont "the #DEX!"

	para "It automatically"
	line "records data on"
	cont "#MON you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"

	para "<PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"

	para "<PLAYER> got a"
	line "#DEX from OAK!"
	done

;OaksLabOaksDreamText:
OaksLabOaksDreamGivePagerText:
	text "OAK: To make a"
	line "complete guide"
	cont "on all the #MON"
	cont "in the world..."

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#MON history!"
;	done

;OaksLabOakGivePagerText:
	para "<PLAYER>, <RIVAL>,"
	line "Take this, too."

	para "It will come in"
	line "handy on your"
	cont "#MON journey."
	done

GotPagerCardText:
	text "<PLAYER>'s #GEAR"
	line "now has a PPS!"
	done

OaksLabOakExplainsPagerText:
	text "That's the latest"
	line "#GEAR card."

	para "The #MON"
	line "PAGER SYSTEM."

	para "Or PPS for short."

	para "It allows you to"
	line "call on special"
	cont "#MON to aid you"
	cont "on your travels."

	para "But you need to"
	line "get #MON PAGERs"
	cont "to call with it."

	para "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"
	done

OaksLabRivalLeavesAfterPokedexText:
	text "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a MAP CARD"
	cont "for my #GEAR"
	cont "from my sis!"
	done

OaksLabOakGivePhoneNumberText:
	text "OAK: <PLAYER>,"
	line "completing the"
	cont "#DEX is a big"
	cont "responsibility."
	
	para "So, here is my"
	line "phone number. You"
	cont "can call me if"
	cont "anything comes up!"
	done

GotOaksNumberText:
	text "<PLAYER> got OAK's"
	line "phone number."
	done

OaksLabOakTalkToMomText:
	text "Your journey will"
	line "be long and hard."

	para "Before you leave,"
	line "make sure that you"
	cont "talk to your mom."
	done

OaksLabPokemonAwaitText:
	text "#MON around the"
	line "world wait for"
	cont "you, <PLAYER>!"
	done

OaksLabGetPokeballsText:
	text "OAK: You can't get"
	line "detailed data on"
	cont "#MON by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#MON."

	para "<PLAYER> received"
	line "# BALLs."
	done

OaksLabPokeballExplainationText:
	text "When a wild"
	line "#MON appears,"
	cont "it's fair game."

	para "Just throw a #"
	line "BALL at it and"
	cont "try to catch it!"

	para "This won't always"
	line "work, though."

	para "A healthy #MON"
	line "could escape. You"
	cont "have to be lucky!"
	done

OaksAssistantText:
	text "I study #MON as"
	line "PROF.OAK's AIDE."
	done

OaksLabGirlText:
	text "PROF.OAK is the"
	line "authority on"
	cont "#MON!"

	para "Many #MON"
	line "trainers hold him"
	cont "in high regard!"
	done

; bg text
OaksPokeBallText:
	text "That's PROF.OAK's"
	line "last #MON!"
	done

OaksLabPoster1Text:
	text "Press START to"
	line "open the MENU."
	done

OaksLabPoster2Text:
	text "The SAVE option is"
	line "on the MENU."

	para "Use it in a timely"
	line "manner."
	done

OaksLabTrashcanText:
	text "There's nothing in"
	line "here…"
	done

OaksLabPCText:
	text "It's PROF. OAK's"
	line "personal computer."

	para "…"

	para "You don't know"
	line "the password."
	done

OaksLabThoseArePokeballsText:
	text "Those are"
	line "# BALLs. They"
	cont "contain #MON!"
	done

OaksLabPokedexText:
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
	done

OakLabEvaluateDexText:
	text "How is your #-"
	line "DEX coming?"

	para "Let's see…"
	done

OakLabOakGoodbyeText:
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done

; DEBUG
DebugGotCharmander:
	opentext
	writetext DebugGotCharmanderText
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	clearevent EVENT_GOT_SQUIRTLE_FROM_OAK
	clearevent EVENT_GOT_BULBASAUR_FROM_OAK
	setevent EVENT_GOT_CHARMANDER_FROM_OAK
	waitbutton
	closetext
	end

DebugGotSquirtle:
	opentext
	writetext DebugGotSquirtleText
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	clearevent EVENT_GOT_CHARMANDER_FROM_OAK
	clearevent EVENT_GOT_BULBASAUR_FROM_OAK
	setevent EVENT_GOT_SQUIRTLE_FROM_OAK
	waitbutton
	closetext
	end

DebugGotBulbasaur:
	opentext
	writetext DebugGotBulbasaurText
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	clearevent EVENT_GOT_CHARMANDER_FROM_OAK
	clearevent EVENT_GOT_SQUIRTLE_FROM_OAK
	setevent EVENT_GOT_BULBASAUR_FROM_OAK
	waitbutton
	closetext
	end

DebugBeatEliteFour:
	opentext
	writetext DebugBeatEliteFourText
	yesorno
	iffalse .End
	setflag ENGINE_CREDITS_SKIP
	setevent EVENT_BEAT_ELITE_FOUR
.End
	closetext
	end

; back bookshelves
DebugFullPokegear:
	opentext
	writetext DebugFullPokegearText
	yesorno
	iffalse .End
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_PAGER_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	setflag ENGINE_PAGER_CUT
	setflag ENGINE_PAGER_FLY
	setflag ENGINE_PAGER_SURF
	setflag ENGINE_PAGER_STRENGTH
	setflag ENGINE_PAGER_FLASH
	setflag ENGINE_PAGER_WHIRLPOOL
	setflag ENGINE_PAGER_ROCK_SMASH
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setflag ENGINE_FLYPOINT_NEW_BARK
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	setflag ENGINE_FLYPOINT_BLACKTHORN
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	setflag ENGINE_FLYPOINT_PALLET
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setflag ENGINE_FLYPOINT_PEWTER
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_VERMILION
	setflag ENGINE_FLYPOINT_CELADON
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setflag ENGINE_FLYPOINT_LAVENDER
	setflag ENGINE_FLYPOINT_FUCHSIA
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_CINNABAR
;	setflag ENGINE_FLYPOINT_SAFARI_ZONE_GATE
;	setflag ENGINE_UNLOCKED_UNOWNS_A_TO_K
;	setflag ENGINE_UNLOCKED_UNOWNS_L_TO_R
;	setflag ENGINE_UNLOCKED_UNOWNS_S_TO_W
;	setflag ENGINE_UNLOCKED_UNOWNS_X_TO_Z
.End
	closetext
	end

DebugMasterBalls:
	opentext
	writetext DebugMasterBallsText
	yesorno
	iffalse .End
	giveitem MASTER_BALL, 40
	giveitem MAX_REPEL, 40
.End
	closetext
	end

DebugAllTMHMs:
	opentext
	writetext DebugAllTMHMsText
	yesorno
	iffalse .NoTMs
	giveitem TM_DYNAMICPUNCH
	giveitem TM_RAZOR_WIND
	giveitem TM_SWORDS_DANCE
	giveitem TM_WHIRLWIND
	giveitem TM_MEGA_KICK
	giveitem TM_TOXIC
	giveitem TM_HORN_DRILL
	giveitem TM_BODY_SLAM
	giveitem TM_TAKE_DOWN
	giveitem TM_DOUBLE_EDGE
	giveitem TM_BUBBLEBEAM
	giveitem TM_WATER_GUN
	giveitem TM_ICE_BEAM
	giveitem TM_BLIZZARD
	giveitem TM_HYPER_BEAM
	giveitem TM_PAY_DAY
	giveitem TM_SUBMISSION
	giveitem TM_COUNTER
	giveitem TM_SEISMIC_TOSS
	giveitem TM_RAGE
	giveitem TM_GIGA_DRAIN
	giveitem TM_SOLARBEAM
	giveitem TM_DRAGONBREATH
	giveitem TM_THUNDERBOLT
	giveitem TM_THUNDER
	giveitem TM_EARTHQUAKE
	giveitem TM_FISSURE
	giveitem TM_DIG
	giveitem TM_PSYCHIC_M
	giveitem TM_TELEPORT
	giveitem TM_MIMIC
	giveitem TM_DOUBLE_TEAM
	giveitem TM_REFLECT
	giveitem TM_BIDE
	giveitem TM_METRONOME
	giveitem TM_SELFDESTRUCT
	giveitem TM_EGG_BOMB
	giveitem TM_FIRE_BLAST
	giveitem TM_SWIFT
	giveitem TM_SKULL_BASH
	giveitem TM_SOFTBOILED
	giveitem TM_DREAM_EATER
	giveitem TM_SKY_ATTACK
	giveitem TM_REST
	giveitem TM_THUNDER_WAVE
	giveitem TM_PSYWAVE
	giveitem TM_EXPLOSION
	giveitem TM_ROCK_SLIDE
	giveitem TM_TRI_ATTACK
	giveitem TM_SUBSTITUTE
	giveitem TM_FLAMETHROWER
	giveitem TM_SPARK
	giveitem TM_ICY_WIND
	giveitem TM_HEADBUTT
	giveitem TM_CURSE
	giveitem TM_ROLLOUT
	giveitem TM_ROCK_SMASH
	giveitem TM_HIDDEN_POWER
	giveitem TM_SUNNY_DAY
	giveitem TM_SWEET_SCENT
	giveitem TM_SNORE
	giveitem TM_PROTECT
	giveitem TM_RAIN_DANCE
	giveitem TM_ENDURE
	giveitem TM_IRON_TAIL
	giveitem TM_SHADOW_BALL
	giveitem TM_MUD_SLAP
	giveitem TM_SWAGGER
	giveitem TM_SLEEP_TALK
	giveitem TM_SLUDGE_BOMB
	giveitem TM_SANDSTORM
	giveitem TM_ATTRACT
	giveitem TM_THIEF
	giveitem TM_STEEL_WING
	giveitem TM_FURY_CUTTER
	giveitem TM_NIGHTMARE
	; fallthrough
.NoTMs
	writetext DebugAllHMsText
	yesorno
	iffalse .End
	giveitem HM_CUT
	giveitem HM_FLY
	giveitem HM_SURF
	giveitem HM_STRENGTH
	giveitem HM_FLASH
	giveitem HM_WHIRLPOOL
	giveitem HM_WATERFALL
	setevent EVENT_GOT_HM01_CUT
	setevent EVENT_GOT_HM02_FLY
	setevent EVENT_GOT_HM03_SURF
	setevent EVENT_GOT_HM04_STRENGTH
	setevent EVENT_GOT_HM05_FLASH
	setevent EVENT_GOT_HM06_WHIRLPOOL
	setevent EVENT_GOT_HM07_WATERFALL
.End
	closetext
	end

DebugCredits:
	opentext
	writetext DebugRollCreditsText
	yesorno
	iffalse .End
	credits
.End
	closetext
	end

;Debug:
;Debug:

DebugLockedGyms:
	opentext
	writetext DebugViridianGymText
	yesorno
	iffalse .End
	setevent EVENT_CINNABAR_GYM_LEADER_RETURNED
	setevent EVENT_VIRIDIAN_GYM_LEADER_RETURNED
.End
	closetext
	end

DebugBeatJohto:
	opentext
	writetext DebugBeatJohtoText
	yesorno
	iffalse .End
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_RISINGBADGE
	setevent EVENT_BEAT_FALKNER
	setevent EVENT_BEAT_BUGSY
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_BEAT_MORTY
	setevent EVENT_BEAT_CHUCK
	setevent EVENT_BEAT_JASMINE
	setevent EVENT_BEAT_PRYCE
	setevent EVENT_BEAT_CLAIR
.End
	closetext
	end

; front bookshelves
DebugBeatBrock:
	opentext
	writetext DebugBeatBrockText
	yesorno
	iffalse .End
	setflag ENGINE_BOULDERBADGE
	setevent EVENT_BEAT_BROCK
.End
	closetext
	end

DebugBeatMisty:
	opentext
	writetext DebugBeatMistyText
	yesorno
	iffalse .End
	setflag ENGINE_CASCADEBADGE
	setevent EVENT_BEAT_MISTY
.End
	closetext
	end

DebugBeatSurge:
	opentext
	writetext DebugBeatSurgeText
	yesorno
	iffalse .End
	setflag ENGINE_THUNDERBADGE
	setevent EVENT_BEAT_LTSURGE
.End
	closetext
	end

DebugBeatErika:
	opentext
	writetext DebugBeatErikaText
	yesorno
	iffalse .End
	setflag ENGINE_RAINBOWBADGE
	setevent EVENT_BEAT_ERIKA
.End
	closetext
	end

DebugBeatKoga:
	opentext
	writetext DebugBeatKogaText
	yesorno
	iffalse .End
	setflag ENGINE_MARSHBADGE
	setevent EVENT_BEAT_KOGA
.End
	closetext
	end

DebugBeatSabrina:
	opentext
	writetext DebugBeatSabrinaText
	yesorno
	iffalse .End
	setflag ENGINE_SOULBADGE
	setevent EVENT_BEAT_SABRINA
.End
	closetext
	end

DebugBeatBlaine:
	opentext
	writetext DebugBeatBlaineText
	yesorno
	iffalse .End
	setflag ENGINE_VOLCANOBADGE
	setevent EVENT_BEAT_BLAINE
.End
	closetext
	end

DebugBeatGiovanni:
	opentext
	writetext DebugBeatGiovanniText
	yesorno
	iffalse .End
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_GIOVANNI
.End
	closetext
	end

DebugGotCharmanderText:
	text "Got CHARMANDER?"
	done

DebugGotSquirtleText:
	text "Got SQUIRTLE?"
	done

DebugGotBulbasaurText:
	text "Got BULBASAUR?"
	done

DebugBeatEliteFourText:
	text "Beat ELITE FOUR?"
	done

DebugFullPokegearText:
	text "Full #GEAR?"
	line "Fly Anywhere?"
	done

DebugMasterBallsText:
	text "MASTER BALLs and"
	line "MAX REPELs?"
	done

DebugAllTMHMsText:
	text "All TMs and"
	line "all HMs?"
	done

DebugAllHMsText:
	text "All HMs?"
	line "(not TMs)"
	done

DebugRollCreditsText:
	text "Roll credits?"
	done

DebugViridianGymText:
	text "Unlock CINNABAR,"
	line "VIRIDIAN GYMs?"
	done

DebugBeatJohtoText:
	text "All JOHTO BADGES?"
	done

DebugBeatBrockText:
	text "Beat BROCK?"
	done

DebugBeatMistyText:
	text "Beat MISTY?"
	done

DebugBeatSurgeText:
	text "Beat SURGE?"
	done

DebugBeatErikaText:
	text "Beat ERIKA?"
	done

DebugBeatKogaText:
	text "Beat KOGA?"
	done

DebugBeatSabrinaText:
	text "Beat SABRINA?"
	done

DebugBeatBlaineText:
	text "Beat BLAINE?"
	done

DebugBeatGiovanniText:
	text "Beat GIOVANNI?"
	done

OaksLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	def_coord_events
;	coord_event  4,  6, SCENE_OAKSLAB_MEET_OAK, OaksLabTryToLeaveScript
;	coord_event  5,  6, SCENE_OAKSLAB_MEET_OAK, OaksLabTryToLeaveScript
	coord_event  4,  6, SCENE_OAKSLAB_RIVAL_BATTLE, OaksLabTryToLeaveScript ;OaksLabRivalBattleScript
	coord_event  5,  6, SCENE_OAKSLAB_RIVAL_BATTLE, OaksLabTryToLeaveScript ;OaksLabRivalBattleScript

	def_bg_events
	bg_event  6,  1, BGEVENT_READ, DebugGotCharmander
	bg_event  7,  1, BGEVENT_READ, DebugGotSquirtle
	bg_event  8,  1, BGEVENT_READ, DebugGotBulbasaur
	bg_event  9,  1, BGEVENT_READ, DebugBeatEliteFour
; back bookshelves
	bg_event  0,  6, BGEVENT_READ, DebugFullPokegear
	bg_event  1,  6, BGEVENT_READ, DebugMasterBalls
	bg_event  2,  6, BGEVENT_READ, DebugAllTMHMs
	bg_event  3,  6, BGEVENT_READ, DebugCredits
;	bg_event  6,  6, BGEVENT_READ, Debug
;	bg_event  7,  6, BGEVENT_READ, Debug
	bg_event  8,  6, BGEVENT_READ, DebugLockedGyms
	bg_event  9,  6, BGEVENT_READ, DebugBeatJohto
; front bookshelves
	bg_event  0,  7, BGEVENT_READ, DebugBeatBrock
	bg_event  1,  7, BGEVENT_READ, DebugBeatMisty
	bg_event  2,  7, BGEVENT_READ, DebugBeatSurge
	bg_event  3,  7, BGEVENT_READ, DebugBeatErika
	bg_event  6,  7, BGEVENT_READ, DebugBeatKoga
	bg_event  7,  7, BGEVENT_READ, DebugBeatSabrina
	bg_event  8,  7, BGEVENT_READ, DebugBeatBlaine
	bg_event  9,  7, BGEVENT_READ, DebugBeatGiovanni
	bg_event  4,  0, BGEVENT_READ, OaksLabPoster1
	bg_event  5,  0, BGEVENT_READ, OaksLabPoster2
	bg_event  9,  3, BGEVENT_READ, OaksLabTrashcan
	bg_event  0,  1, BGEVENT_READ, OaksLabPC

	def_object_events
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OakScript, EVENT_OAKS_LAB_OAK
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BlueScript, EVENT_OAKS_LAB_RIVAL
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharmanderPokeBallScript, EVENT_CHARMANDER_POKEBALL_IN_OAKS_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SquirtlePokeBallScript, EVENT_SQUIRTLE_POKEBALL_IN_OAKS_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, BulbasaurPokeBallScript, EVENT_BULBASAUR_POKEBALL_IN_OAKS_LAB
	object_event  2,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokedexScript, EVENT_GOT_POKEDEX
	object_event  3,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, PokedexScript, EVENT_GOT_POKEDEX
	object_event  1,  9, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabGirlScript, -1
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistantScript, -1
	object_event  2, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksAssistantScript, -1

