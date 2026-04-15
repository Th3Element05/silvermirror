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
	variablesprite SPRITE_VARIABLE_1, SPRITE_GEODUDE_MOVE
	jumptext OaksLabIntroConversationText

;scripts
OakScript:
	faceplayer
	checkevent EVENT_GOT_SS_TICKET_FROM_OAK
	iftrue .EvaluatePokedex
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .OakGiveTicket
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
	jumptext OaksLabPokemonAwaitText

.EvaluatePokedex
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

.OakGiveBalls
	writetext OaksLabGetPokeballsText
	playsound SFX_ITEM
	waitsfx
	promptbutton
	giveitem POKE_BALL, 5
	itemnotify
;
;	promptbutton
;	verbosegiveitem POKE_BALL, 5
;
	writetext OaksLabPokeballExplainationText
	waitbutton
	closetext
	setevent EVENT_GOT_POKEBALLS_FROM_OAK
	end

.OakWhichPokemonDoYouWant
	jumptext OaksLabWhichPokemonDoYouWantText

.OakWildPokemon
	jumptext OaksLabWildPokemonText

.OakGiveTicket
	opentext
	writetext OakGiveTicketText1
	promptbutton
	verbosegiveitem S_S_TICKET
	setevent EVENT_GOT_SS_TICKET_FROM_OAK
	writetext OakGiveTicketText2
	waitbutton
	closetext
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
	special SilentSetSeenMon
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OaksLabTakeCharmanderText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL1
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
	setevent EVENT_GOT_CHARMANDER_FROM_OAK
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
	special SilentSetSeenMon
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OaksLabTakeSquirtleText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL2
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
	setevent EVENT_GOT_SQUIRTLE_FROM_OAK
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
	special SilentSetSeenMon
	checkevent EVENT_GOT_A_POKEMON_FROM_OAK
	iftrue OaksLastPokemonScript
	turnobject OAKSLAB_OAK, DOWN
	opentext
	writetext OaksLabTakeBulbasaurText
	yesorno
	iffalse OaksLabDidntChooseStarterScript
	disappear OAKSLAB_POKE_BALL3
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
	setevent EVENT_GOT_BULBASAUR_FROM_OAK
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
	clearevent EVENT_BLUES_ROOM_CHARMANDER
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
	clearevent EVENT_BLUES_ROOM_SQUIRTLE
	waitbutton
	closetext
;	setscene SCENE_OAKSLAB_RIVAL_BATTLE
	end

RivalTakesBulbasaur:
	applymovement OAKSLAB_BLUE, RivalTakesBulbasaurMovement
	opentext
	writetext OaksLabRivalTakesPokemonText
	disappear OAKSLAB_POKE_BALL3
	clearevent EVENT_BLUES_ROOM_BULBASAUR
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
;	pause 15
	playsound SFX_EXIT_BUILDING
	disappear OAKSLAB_BLUE
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
	setevent EVENT_VIRIDIAN_CITY_COFFEE_GRAMPS
	clearevent EVENT_VIRIDIAN_CITY_CATCHING_GRAMPS
	setmapscene ROUTE_22, SCENE_ROUTE22_RIVAL
	setscene SCENE_OAKSLAB_NOOP
	special RestartMapMusic
	setlasttalked OAKSLAB_OAK
	faceplayer
	opentext
	writetext OaksLabOakGivePhoneNumberText
	waitbutton
;	closetext
	addcellnum PHONE_OAK
;	opentext
	writetext GotOaksNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	promptbutton
;	closetext
	writetext OaksLabOakTalkToMomText
	waitbutton
	closetext
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
OaksAssistantText:
	text "I study #MON as"
	line "PROF.OAK's AIDE."
	done

;OaksLabGirlScript:
;	jumptextfaceplayer OaksLabGirlText
;OaksLabGirlText:
;	text "PROF.OAK is the"
;	line "authority on"
;	cont "#MON!"
;
;	para "Many #MON"
;	line "trainers hold him"
;	cont "in high regard!"
;	done



OaksLabPoster1:
	jumptext OaksLabPoster1Text
OaksLabPoster1Text:
	text "Press START to"
	line "open the MENU."
	done

OaksLabPoster2:
	jumptext OaksLabPoster2Text
OaksLabPoster2Text:
	text "The SAVE option is"
	line "on the MENU."

	para "Use it in a timely"
	line "manner."
	done

OaksLabPC:
	jumptext OaksLabPCText
OaksLabPCText:
	text "It's PROF. OAK's"
	line "personal computer."

	para "…"

	para "You don't know"
	line "the password."
	done

PokedexScript:
	jumptext OaksLabPokedexText
OaksLabPokedexText:
	text "It's encyclopedia-"
	line "like, but the"
	cont "pages are blank!"
	done

OaksLabTrashcan:
	jumpstd TrashCanScript

OaksLabBookshelf:
	jumpstd DifficultBookshelfScript

; movements
OaksLabPlayerWalkInMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
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
	step LEFT
OaksLabRivalBattleSquirtleMovement:
	step LEFT
OaksLabRivalBattleCharmanderMovement:
	step LEFT
	step DOWN
	step_end

OaksLabRivalLeavesMovement:
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	slow_step DOWN
	step_sleep 10
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
	line "<PLAYER>! GRAMPS"
	cont "isn't around!"
	done
	
OaksLabIntroConversationText:
	text "<RIVAL>: GRAMPS!"
	line "I'm fed up with"
	cont "waiting!"

	para "OAK: <RIVAL>?"
	line "Let me think…"

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#MON here!"

	para "Haha!"

	para "They are inside"
	line "the #BALLs."

	para "When I was young,"
	line "I was a serious"
	cont "#MON trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	roll "one!"

	para "Choose!"

	para "<RIVAL>: Hey!"
	line "GRAMPS! What"
	cont "about me?"

	para "OAK: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

OaksLabWhichPokemonDoYouWantText:
	text "OAK: Now, <PLAYER>,"
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
	roll "fight against it!"
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
	text "You want the"
	line "FIRE #MON,"
	cont "CHARMANDER?"
	done

OaksLabTakeSquirtleText:
	text "You want the"
	line "WATER #MON,"
	cont "SQUIRTLE?"
	done

OaksLabTakeBulbasaurText:
	text "You want the"
	line "GRASS #MON,"
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
	roll "our #MON!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLabRivalBattleWinText:
	text "<RIVAL>: WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	roll "wrong #MON!"
	done

OaksLabRivalBattleLossText:
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	done

OaksLabAfterRivalBattleText:
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#MON fight to"
	roll "toughen it up!"

	para "<PLAYER>! GRAMPS!"
	line "Smell you later!"
	done

OaksLabRaisePokemonText:
	text "OAK: <PLAYER>,"
	line "raise your young"
	cont "#MON by making"
	roll "it fight!"
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
	text "OAK: Ah! This is"
	line "the custom #-"
	cont "BALL I ordered."

	para "Thank you!"
	done

OaksLabRivalGrampsText:
	text "<RIVAL>: GRAMPS!"
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
	roll "seen or caught!"

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
	roll "in the world…"

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
	text "OAK: That's the"
	line "latest #GEAR"
	cont "expansion card."

	para "The #MON"
	line "PAGER SYSTEM."

	para "It allows you to"
	line "call on special"
	cont "#MON to aid you"
	roll "on your travels."

	para "But you need to"
	line "get #MON PAGERs"
	cont "to call with it."

	para "<RIVAL>: Alright"
	line "GRAMPS! Leave it"
	cont "all to me!"
	done

OaksLabRivalLeavesAfterPokedexText:
	text "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a MAP CARD"
	cont "for my #GEAR"
	roll "from my sis!"
	done

OaksLabOakGivePhoneNumberText:
	text "OAK: <PLAYER>,"
	line "completing the"
	cont "#DEX is a big"
	roll "responsibility."
	
	para "So, here is my"
	line "phone number. You"
	cont "can call me if"
	roll "anything comes up!"
	done

GotOaksNumberText:
	text "<PLAYER> got OAK's"
	line "phone number."
	done

OaksLabOakTalkToMomText:
	text "OAK: You have a"
	line "long journey ahead"
	cont "of you."

	para "Make sure that you"
	line "talk to your mom"
	cont "before you leave."
	done

OaksLabPokemonAwaitText:
	text "OAK: <PLAYER>!"
	line "#MON around the"
	cont "world await you!"
	done

OaksLabGetPokeballsText:
	text "OAK: You can't get"
	line "detailed data on"
	cont "#MON by just"
	roll "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	roll "#MON."

	para "<PLAYER> received"
	line "#BALLs."
	done

OaksLabPokeballExplainationText:
	text "OAK: When a wild"
	line "#MON appears,"
	cont "it's fair game."

	para "Just throw a #-"
	line "BALL at it and"
	cont "try to catch it!"

	para "This won't always"
	line "work, though."

	para "A healthy #MON"
	line "could escape."

	para "You need to weaken"
	line "them first."
	done

OakGiveTicketText1:
	text "OAK: <PLAYER>!"
	line "There you are!"

	para "I called because"
	line "I have something"
	cont "for you."

	para "It's a ticket to"
	line "ride the S.S.AQUA!"

	para "Now you can catch"
	line "#MON in JOHTO!"
	done

OakGiveTicketText2:
	text "Board the ship at"
	line "VERMILION CITY!"

	para "It sails to"
	line "OLIVINE CITY far"
	cont "to the west!"

	para "You should visit"
	line "my friend PROF.ELM"
	cont "in NEW BARK TOWN!"

	para "I'm sure he would"
	line "love to see how"
	cont "your #DEX is"
	roll "coming along!"
	done

; bg text
OaksPokeBallText:
	text "That's PROF.OAK's"
	line "last #MON!"
	done

OaksLabTrashcanText:
	text "There's nothing in"
	line "here…"
	done

OaksLabThoseArePokeballsText:
	text "Those are"
	line "#BALLs. They"
	cont "contain #MON!"
	done

OakLabEvaluateDexText:
	text "How is your"
	line "#DEX coming?"

	para "Let's see…"
	done

OakLabOakGoodbyeText:
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done

;OaksLabTravelTip1Text:
;	text "<PLAYER> opened a"
;	line "book."
;
;	para "Travel Tip 1:"
;
;	para "Press START to"
;	line "open the MENU."
;	done

;OaksLabTravelTip2Text:
;	text "<PLAYER> opened a"
;	line "book."
;
;	para "Travel Tip 2:"
;
;	para "Record your trip"
;	line "with SAVE!"
;	done

;OaksLabTravelTip3Text:
;	text "<PLAYER> opened a"
;	line "book."
;
;	para "Travel Tip 3:"
;
;	para "Open your PACK and"
;	line "press SELECT to"
;	cont "move items."
;	done

;OaksLabTravelTip4Text:
;	text "<PLAYER> opened a"
;	line "book."
;
;	para "Travel Tip 4:"
;
;	para "Check your #MON"
;	line "moves. Press the"
;
;	para "A Button to switch"
;	line "moves."
;	done

; DEBUG
DebugGotCharmander:
	opentext
	writetext DebugGotCharmanderText
	yesorno
	iffalse .End
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	clearevent EVENT_GOT_SQUIRTLE_FROM_OAK
	clearevent EVENT_GOT_BULBASAUR_FROM_OAK
	setevent EVENT_GOT_CHARMANDER_FROM_OAK
.End
	closetext
	end

DebugGotCharmanderText:
	text "Got CHARMANDER?"
	done

DebugGotSquirtle:
	opentext
	writetext DebugGotSquirtleText
	yesorno
	iffalse .End
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	clearevent EVENT_GOT_CHARMANDER_FROM_OAK
	clearevent EVENT_GOT_BULBASAUR_FROM_OAK
	setevent EVENT_GOT_SQUIRTLE_FROM_OAK
.End
	closetext
	end

DebugGotSquirtleText:
	text "Got SQUIRTLE?"
	done

DebugGotBulbasaur:
	opentext
	writetext DebugGotBulbasaurText
	yesorno
	iffalse .End
	setevent EVENT_GOT_POKEDEX
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_A_POKEMON_FROM_OAK
	clearevent EVENT_GOT_CHARMANDER_FROM_OAK
	clearevent EVENT_GOT_SQUIRTLE_FROM_OAK
	setevent EVENT_GOT_BULBASAUR_FROM_OAK
.End
	closetext
	end

DebugGotBulbasaurText:
	text "Got BULBASAUR?"
	done

DebugBeatEliteFour:
	opentext
	writetext DebugBeatEliteFourText
	yesorno
	iffalse .End
	setevent EVENT_BEAT_E4_LORELEI
	setevent EVENT_BEAT_E4_BRUNO
	setevent EVENT_BEAT_E4_AGATHA
	setevent EVENT_BEAT_E4_LANCE
	setevent EVENT_BEAT_E4_CHAMPION
;	setflag ENGINE_CREDITS_SKIP
;	setevent EVENT_BEAT_ELITE_FOUR
	warp HALL_OF_FAME, 4, 9
.End
	closetext
	end

DebugBeatEliteFourText:
	text "Beat ELITE FOUR?"
	done

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
;	setflag ENGINE_PAGER_WHIRLPOOL
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

DebugFullPokegearText:
	text "Full #GEAR?"
	line "Fly Anywhere?"
	done

DebugAllTMs:
	opentext
	writetext DebugAllTMsText
	yesorno
	iffalse .End
	giveitem TM_DYNAMICPUNCH
	giveitem TM_DYNAMICPUNCH ;TM01 ; aa
	giveitem TM_DRAGON_CLAW  ;TM02 ; ab
	giveitem TM_SURF         ;TM03 ; ac
	giveitem TM_CALM_MIND    ;TM04 ; ad
	giveitem TM_FLASH        ;TM05 ; ae
	giveitem TM_TOXIC        ;TM06 ; af
	giveitem TM_BULK_UP      ;TM07 ; b0
	giveitem TM_BODY_SLAM    ;TM08 ; b1
	giveitem TM_BULLET_SEED  ;TM09 ; b2
	giveitem TM_HIDDEN_POWER ;TM10 ; b3
	giveitem TM_BUBBLEBEAM   ;TM11 ; b4
	giveitem TM_WATER_GUN    ;TM12 ; b5
	giveitem TM_ICE_BEAM     ;TM13 ; b6
	giveitem TM_BLIZZARD     ;TM14 ; b7
	giveitem TM_HYPER_BEAM   ;TM15 ; b8
	giveitem TM_PAY_DAY      ;TM16 ; b9
	giveitem TM_PROTECT      ;TM17 ; ba
	giveitem TM_COUNTER      ;TM18 ; bb
	giveitem TM_SEISMIC_TOSS ;TM19 ; bc
	giveitem TM_ENDURE       ;TM20 ; bd
	giveitem TM_GIGA_DRAIN   ;TM21 ; be
	giveitem TM_SOLARBEAM    ;TM22 ; bf
	giveitem TM_IRON_TAIL    ;TM23 ; c0
	giveitem TM_THUNDERBOLT  ;TM24 ; c1
	giveitem TM_THUNDER      ;TM25 ; c2
	giveitem TM_EARTHQUAKE   ;TM26 ; c3
	giveitem TM_FISSURE      ;TM27 ; c4
	giveitem TM_DIG          ;TM28 ; c5
	giveitem TM_PSYCHIC_M    ;TM29 ; c6
	giveitem TM_WATER_PULSE  ;TM30 ; c7
	giveitem TM_MUD_SLAP     ;TM31 ; c8
	giveitem TM_DOUBLE_TEAM  ;TM32 ; c9
	giveitem TM_REFLECT      ;TM33 ; ca
	giveitem TM_BIDE         ;TM34 ; cb
	giveitem TM_METRONOME    ;TM35 ; cc
	giveitem TM_SELFDESTRUCT ;TM36 ; cd
	giveitem TM_SUBMISSION   ;TM37 ; ce
	giveitem TM_FIRE_BLAST   ;TM38 ; cf
	giveitem TM_SWIFT        ;TM39 ; d0
	giveitem TM_AERIAL_ACE   ;TM40 ; d1
	giveitem TM_FLAMETHROWER ;TM41 ; d2
	giveitem TM_SPARK        ;TM42 ; d3
	giveitem TM_SKY_ATTACK   ;TM43 ; d4
	giveitem TM_REST         ;TM44 ; d5
	giveitem TM_THUNDER_WAVE ;TM45 ; d6
	giveitem TM_SHARPEN      ;TM46 ; d7
	giveitem TM_ICY_WIND     ;TM47 ; d8
	giveitem TM_ROCK_SLIDE   ;TM48 ; d9
	giveitem TM_TRI_ATTACK   ;TM49 ; da
	giveitem TM_SUBSTITUTE   ;TM50 ; db
	giveitem TM_ROOST        ;TM51 ; dc
	giveitem TM_FOCUS_BLAST  ;TM52 ; dd
	giveitem TM_ENERGY_BALL  ;TM53 ; de
	giveitem TM_FALSE_SWIPE  ;TM54 ; df
	giveitem TM_BRICK_BREAK  ;TM55 ; e0
	giveitem TM_HEADBUTT     ;TM56 ; e1
	giveitem TM_AIR_SLICE    ;TM57 ; e2
	giveitem TM_DOUBLE_EDGE  ;TM58 ; e3
	giveitem TM_DRAGON_PULSE ;TM59 ; e4
	giveitem TM_FLASH_CANNON ;TM60 ; e5
	giveitem TM_ROLLOUT      ;TM61 ; e6
	giveitem TM_SILVER_WIND  ;TM62 ; e7 ;new, where?
	giveitem TM_SLUDGE_BOMB  ;TM63 ; e8
	giveitem TM_SWAGGER      ;TM64 ; e9
	giveitem TM_SHADOW_CLAW  ;TM65 ; ea
	giveitem TM_THIEF        ;TM66 ; eb
	giveitem TM_STEEL_WING   ;TM67 ; ec
	giveitem TM_GIGA_IMPACT  ;TM68 ; ed
	giveitem TM_CURSE        ;TM69 ; ee
	giveitem TM_SHADOW_BALL  ;TM70 ; ef
	giveitem TM_STONE_EDGE   ;TM71 ; f0
	giveitem TM_DRAGONBREATH ;TM72 ; f1
	giveitem TM_ATTRACT      ;TM73 ; f2
	giveitem TM_GYRO_BALL    ;TM74 ; f3
	giveitem TM_SWORDS_DANCE ;TM75 ; f4
	giveitem TM_SUNNY_DAY    ;TM76 ; f5
	giveitem TM_RAIN_DANCE   ;TM77 ; f6
	giveitem TM_SANDSTORM    ;TM78 ; f7
	giveitem TM_DARK_PULSE   ;TM79 ; f8
	giveitem TM_ANCIENTPOWER ;TM80 ; f9
	giveitem TM_X_SCISSOR    ;TM81 ; fa
	giveitem TM_WHIRLPOOL    ;TM82 ; fb
	giveitem TM_WATERFALL    ;TM83 ; fc
	giveitem TM_POISON_JAB   ;TM84 ; fd
.End
	closetext
	end

DebugAllTMsText:
	text "All TMs?"
	done

DebugAllHMs:
	opentext
	writetext DebugAskPagerCardText
	yesorno
	iffalse .End
	setflag ENGINE_PAGER_CARD
	writetext DebugAskCutText
	yesorno
	iffalse .fly
;	giveitem TM_CUT
	setflag ENGINE_PAGER_CUT
	setevent EVENT_GOT_HM01_CUT
.fly
	writetext DebugAskFlyText
	yesorno
	iffalse .surf
;	giveitem TM_FLY
	setflag ENGINE_PAGER_FLY
	setevent EVENT_GOT_HM02_FLY
.surf
	writetext DebugAskSurfText
	yesorno
	iffalse .strength
	giveitem TM_SURF
	setflag ENGINE_PAGER_SURF
	setevent EVENT_GOT_HM03_SURF
.strength
	writetext DebugAskStrengthText
	yesorno
	iffalse .flash
;	giveitem TM_STRENGTH
	setflag ENGINE_PAGER_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
.flash
	writetext DebugAskFlashText
	yesorno
	iffalse .whirlpool
	giveitem TM_FLASH
	setflag ENGINE_PAGER_FLASH
	setevent EVENT_GOT_HM05_FLASH
.whirlpool
	writetext DebugAskWhirlpoolText
	yesorno
	iffalse .waterfall
	giveitem TM_WHIRLPOOL
	setflag ENGINE_STORMBADGE ;ENGINE_PAGER_WHIRLPOOL
	setevent EVENT_GOT_HM06_WHIRLPOOL
.waterfall
	writetext DebugAskWaterfallText
	yesorno
	iffalse .rocksmash
	giveitem TM_WATERFALL
	setevent EVENT_GOT_HM07_WATERFALL
	setflag ENGINE_CAN_USE_WATERFALL
.rocksmash
	writetext DebugAskRockSmashText
	yesorno
	iffalse .End
	giveitem TM_BRICK_BREAK
	setflag ENGINE_PAGER_ROCK_SMASH
	setevent EVENT_GOT_TM58_ROCK_SMASH
.End
	closetext
	end

DebugAskPagerCardText:
	text "Enable"
	line "PAGER CARD?"
	done

DebugAskCutText:
	text "CUT?"
	done

DebugAskFlyText:
	text "FLY?"
	done

DebugAskSurfText:
	text "SURF?"
	done

DebugAskStrengthText:
	text "STRENGTH?"
	done

DebugAskFlashText:
	text "FLASH?"
	done

DebugAskWhirlpoolText:
	text "WHIRLPOOL?"
	done

DebugAskWaterfallText:
	text "WATERFALL?"
	done

DebugAskRockSmashText:
	text "ROCKSMASH?"
	done

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

DebugMasterBallsText:
	text "MASTER BALLs and"
	line "MAX REPELs?"
	done

DebugSkipFastShip:
	opentext
	writetext DebugSkipFastShipText
	yesorno
	iffalse .End
;	checkevent EVENT_BEAT_E4_CHAMPION
;	iffalse .NotReady
	warp OLIVINE_CITY, 13, 22
;.NotReady
;	writetext DebugCompleteKantoFirstText
;	waitbutton
.End
	closetext
	end

DebugSkipFastShipText:
	text "Skip FAST SHIP?"
	done
;
;DebugCompleteKantoFirstText:
;	text "debug Complete"
;	line "Kanto first!"
;	done

DebugCredits:
	opentext
	writetext DebugRollCreditsText
	yesorno
	iffalse .End
	credits
.End
	closetext
	end

DebugRollCreditsText:
	text "Roll credits?"
	done

;Debug:

DebugSFXRoom:
	opentext
	writetext DebugSFXRoomText
	yesorno
	iffalse .End
	warp DEBUG_SOUND_ROOM, 1, 1
.End
	closetext
	end

DebugSFXRoomText:
	text "Go to SFX Room?"
	done


; front bookshelves
DebugBeatKantoLeaders:
	opentext
	writetext DebugBeatBrockText
	yesorno
	iffalse .misty
	setflag ENGINE_BOULDERBADGE
	setevent EVENT_BEAT_BROCK
.misty
	opentext
	writetext DebugBeatMistyText
	yesorno
	iffalse .surge
	setflag ENGINE_CASCADEBADGE
	setevent EVENT_BEAT_MISTY
.surge
	opentext
	writetext DebugBeatSurgeText
	yesorno
	iffalse .erika
	setflag ENGINE_THUNDERBADGE
	setevent EVENT_BEAT_LTSURGE
.erika
	opentext
	writetext DebugBeatErikaText
	yesorno
	iffalse .koga
	setflag ENGINE_RAINBOWBADGE
	setevent EVENT_BEAT_ERIKA
.koga
	opentext
	writetext DebugBeatKogaText
	yesorno
	iffalse .sabrina
	setflag ENGINE_MARSHBADGE
	setevent EVENT_BEAT_KOGA
.sabrina
	opentext
	writetext DebugBeatSabrinaText
	yesorno
	iffalse .blaine
	setflag ENGINE_SOULBADGE
	setevent EVENT_BEAT_SABRINA
.blaine
	opentext
	writetext DebugBeatBlaineText
	yesorno
	iffalse .giovanni
	setflag ENGINE_VOLCANOBADGE
	setevent EVENT_BEAT_BLAINE
.giovanni
	opentext
	writetext DebugBeatGiovanniText
	yesorno
	iffalse .End
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_GIOVANNI
.End
	closetext
	end

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

DebugLockedKantoGyms:
	opentext
	writetext DebugViridianGymText
	yesorno
	iffalse .End
	setevent EVENT_CINNABAR_GYM_LEADER_RETURNED
	setevent EVENT_VIRIDIAN_GYM_LEADER_RETURNED
.End
	closetext
	end

DebugViridianGymText:
	text "Unlock CINNABAR,"
	line "VIRIDIAN GYMs?"
	done

;Debug:

DebugCompleteKanto:
	opentext
	writetext DebugCompleteKantoText
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
	setflag ENGINE_STORMBADGE ;ENGINE_PAGER_WHIRLPOOL
	setflag ENGINE_PAGER_ROCK_SMASH
	setevent EVENT_GOT_HM01_CUT
	setevent EVENT_GOT_HM02_FLY
	setevent EVENT_GOT_HM03_SURF
	setevent EVENT_GOT_HM04_STRENGTH
	setevent EVENT_GOT_HM05_FLASH
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
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
	setevent EVENT_CINNABAR_GYM_LEADER_RETURNED
	setevent EVENT_VIRIDIAN_GYM_LEADER_RETURNED
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_KOGA
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_GIOVANNI
	setevent EVENT_BEAT_GIOVANNI_HIDEOUT
	setevent EVENT_BEAT_GIOVANNI_SILPHCO
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_E4_LORELEI
	setevent EVENT_BEAT_E4_BRUNO
	setevent EVENT_BEAT_E4_AGATHA
	setevent EVENT_BEAT_E4_LANCE
	setevent EVENT_BEAT_E4_CHAMPION
	warp HALL_OF_FAME, 4, 9
.End
	closetext
	end

DebugCompleteKantoText:
	text "Complete KANTO?"
	done

DebugBeatJohtoLeaders:
	opentext
	writetext DebugBeatJasmineText
	yesorno
	iffalse .morty
	setflag ENGINE_MINERALBADGE
	setevent EVENT_BEAT_JASMINE
.morty
	opentext
	writetext DebugBeatMortyText
	yesorno
	iffalse .whitney
	setflag ENGINE_FOGBADGE
	setevent EVENT_BEAT_MORTY
.whitney
	opentext
	writetext DebugBeatWhitneyText
	yesorno
	iffalse .bugsy
	setflag ENGINE_PLAINBADGE
	setevent EVENT_BEAT_WHITNEY
.bugsy
	opentext
	writetext DebugBeatBugsyText
	yesorno
	iffalse .falkner
	setflag ENGINE_HIVEBADGE
	setevent EVENT_BEAT_BUGSY
.falkner
	opentext
	writetext DebugBeatFalknerText
	yesorno
	iffalse .pryce
	setflag ENGINE_ZEPHYRBADGE
	setevent EVENT_BEAT_FALKNER
.pryce
	opentext
	writetext DebugBeatPryceText
	yesorno
	iffalse .chuck
	setflag ENGINE_GLACIERBADGE
	setevent EVENT_BEAT_PRYCE
.chuck
	opentext
	writetext DebugBeatChuckText
	yesorno
	iffalse .clair
	setflag ENGINE_STORMBADGE
	setevent EVENT_BEAT_CHUCK
.clair
	opentext
	writetext DebugBeatClairText
	yesorno
	iffalse .End
	setflag ENGINE_RISINGBADGE
	setevent EVENT_BEAT_CLAIR
.End
	closetext
	end

DebugBeatJasmineText:
	text "Beat JASMINE?"
	done

DebugBeatMortyText:
	text "Beat MORTY?"
	done

DebugBeatWhitneyText:
	text "Beat WHITNEY?"
	done

DebugBeatBugsyText:
	text "Beat BUGSY?"
	done

DebugBeatFalknerText:
	text "Beat FALKNER?"
	done

DebugBeatPryceText:
	text "Beat PRYCE?"
	done

DebugBeatChuckText:
	text "Beat CHUCK?"
	done

DebugBeatClairText:
	text "Beat CLAIR?"
	done

;Debug:
;Debug:
;Debug:

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
; oak bookshelves
	bg_event  6,  1, BGEVENT_READ, DebugGotCharmander
	bg_event  7,  1, BGEVENT_READ, DebugGotSquirtle
	bg_event  8,  1, BGEVENT_READ, DebugGotBulbasaur
	bg_event  9,  1, BGEVENT_READ, DebugBeatEliteFour
; back bookshelves
	bg_event  0,  6, BGEVENT_READ, DebugFullPokegear
	bg_event  1,  6, BGEVENT_READ, DebugAllTMs
	bg_event  2,  6, BGEVENT_READ, DebugAllHMs
	bg_event  3,  6, BGEVENT_READ, DebugMasterBalls
	bg_event  6,  6, BGEVENT_READ, DebugSkipFastShip
	bg_event  7,  6, BGEVENT_READ, DebugCredits
;	bg_event  8,  6, BGEVENT_READ, Debug
	bg_event  9,  6, BGEVENT_READ, DebugSFXRoom
; front bookshelves
	bg_event  0,  7, BGEVENT_READ, DebugBeatKantoLeaders
	bg_event  1,  7, BGEVENT_READ, DebugLockedKantoGyms
;	bg_event  2,  7, BGEVENT_READ, Debug
	bg_event  3,  7, BGEVENT_READ, DebugCompleteKanto
	bg_event  6,  7, BGEVENT_READ, DebugBeatJohtoLeaders
;	bg_event  7,  7, BGEVENT_READ, Debug
;	bg_event  8,  7, BGEVENT_READ, Debug
;	bg_event  9,  7, BGEVENT_READ, Debug

; normal stuff
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
	object_event  2,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PokedexScript, EVENT_GOT_POKEDEX
	object_event  3,  1, SPRITE_POKEDEX, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, PokedexScript, EVENT_GOT_POKEDEX
;	object_event  2,  3, SPRITE_BULBASAUR, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, OaksLabBulbasaur, EVENT_OAKS_LAB_BULBASAUR
;	object_event  2,  3, SPRITE_CHARMANDER, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, OaksLabCharmander, EVENT_OAKS_LAB_CHARMANDER
;	object_event  2,  3, SPRITE_SQUIRTLE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, OaksLabSquirtle, EVENT_OAKS_LAB_SQUIRTLE
	object_event  8,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksAssistantScript, -1
	object_event  2, 10, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksAssistantScript, -1
;	object_event  1,  9, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OaksLabGirlScript, -1
