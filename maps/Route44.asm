	object_const_def
	const ROUTE44_ASPEAR_BERRY
	const ROUTE44_RED_APRICORN

Route44_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route44Fruittrees

Route44Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_44_FRUIT
	iftrue .NoFruit
	appear ROUTE44_ASPEAR_BERRY
	appear ROUTE44_RED_APRICORN
.NoFruit:
	endcallback

; fruit
Route44_AspearBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, ASPEAR_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem ASPEAR_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE44_ASPEAR_BERRY
	setflag ENGINE_DAILY_ROUTE_44_FRUIT
.NoRoomInBag
	closetext
	end

Route44_REDApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, RED_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem RED_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE44_RED_APRICORN
	setflag ENGINE_DAILY_ROUTE_44_FRUIT
.NoRoomInBag
	closetext
	end

Route44_NoFruit:
	farsjump Std_NoFruitScript

; trainers
TrainerPokemaniacRoland:
	trainer POKEMANIAC, ROLAND, EVENT_BEAT_POKEMANIAC_ROLAND, PokemaniacRolandSeenText, PokemaniacRolandBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PokemaniacRolandAfterBattleText
	waitbutton
	closetext
	end

PokemaniacRolandSeenText:
	text "I'll do anything"
	line "to get my hands on"
	cont "rare #MON!"
	done

PokemaniacRolandBeatenText:
	text "Oooh, your #MON"
	line "are so appealing."
	done

PokemaniacRolandAfterBattleText:
	text "If a #MON has"
	line "different colors"
	cont "from usual, it's"
	cont "more valuable."

	para "What? You mean"
	line "that's not true?"
	done

TrainerFisherEmil:
	trainer FISHER, EMIL, EVENT_BEAT_FISHER_EMIL, FisherEmilSeenText, FisherEmilBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext FisherEmilAfterBattleText
	waitbutton
	closetext
	end

FisherEmilSeenText:
	text "I fish until I"
	line "can't anymore."

	para "I also battle"
	line "until I drop."

	para "That's my"
	line "relationship"
	cont "with my #MON."
	done

FisherEmilBeatenText:
	text "Hmmmm… "
	line "This isn't right."
	done

FisherEmilAfterBattleText:
	text "That's 100 wins"
	line "to 101 losses."

	para "I won't battle"
	line "again for a while."
	done

TrainerCooltrainermBrian:
	trainer COOLTRAINERM, BRIAN, EVENT_BEAT_COOLTRAINERM_BRIAN, CooltrainermBrianSeenText, CooltrainermBrianBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainermBrianAfterBattleText
	waitbutton
	closetext
	end

CooltrainermBrianSeenText:
	text "I can tell you're"
	line "a good trainer by"
	cont "looking at you."

	para "I'm good at #-"
	line "MON, too."
	done

CooltrainermBrianBeatenText:
	text "Tch! It's a total"
	line "loss on my part."
	done

CooltrainermBrianAfterBattleText:
	text "Wow. You have a"
	line "lot of BADGEs."

	para "No wonder you're"
	line "so tough."
	done

TrainerCooltrainerfJenn:
	trainer COOLTRAINERF, JENN, EVENT_BEAT_COOLTRAINERF_JENN, CooltrainerfJennSeenText, CooltrainerfJennBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerfJennAfterBattleText
	waitbutton
	closetext
	end

CooltrainerfJennSeenText:
	text "You look strong."

	para "Good trainers seek"
	line "tough opponents"
	cont "instinctively."
	done

CooltrainerfJennBeatenText:
	text "Nope! This won't"
	line "do at all."
	done

CooltrainerfJennAfterBattleText:
	text "We all get better"
	line "by experiencing"
	cont "many battles."

	para "I battled a lot to"
	line "become what I am"
	cont "today--an elite."
	done

TrainerPsychicKenan:
	trainer PSYCHIC_T, KENAN, EVENT_BEAT_PSYCHIC_KENAN, PsychicKenanSeenText, PsychicKenanBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PsychicKenanAfterBattleText
	waitbutton
	closetext
	end

PsychicKenanSeenText:
	text "I'm gonna win,"
	line "for sure!"
	done

PsychicKenanBeatenText:
	text "Arrgh… That's a"
	line "shocking loss…"
	done

PsychicKenanAfterBattleText:
	text "It's important to"
	line "have conviction"
	cont "on your side."
	done

Route44Sign1:
Route44Sign2:
	jumptext Route44SignText
Route44SignText:
	text "ROUTE 44"

	para "MAHOGANY TOWN -"
	line "BLACKTHORN CITY"
	done

Route44HiddenElixer:
	hiddenitem ELIXER, EVENT_ROUTE_44_HIDDEN_ELIXER

Route44MaxRevive:
	itemball MAX_REVIVE

Route44UltraBall:
	itemball ULTRA_BALL

Route44MaxRepel:
	itemball MAX_REPEL

Route44_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 56,  7, ICE_PATH_1F, 1

	def_coord_events

	def_bg_events
	bg_event 15,  3, BGEVENT_READ, Route44_NoFruit
	bg_event  9,  5, BGEVENT_READ, Route44_NoFruit
	bg_event 51,  5, BGEVENT_READ, Route44Sign1
	bg_event  6, 10, BGEVENT_READ, Route44Sign2
	bg_event 32,  9, BGEVENT_ITEM, Route44HiddenElixer

	def_object_events
	object_event 15,  3, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route44_AspearBerry, EVENT_ROUTE_44_ASPEAR_BERRY
	object_event  9,  5, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route44_REDApricorn, EVENT_ROUTE_44_RED_APRICORN
	object_event 49,  6, SPRITE_SUPER_NERD, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPokemaniacRoland, -1 ;zach
	object_event 35,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 1, TrainerFisherEmil, -1 ;edgar
	object_event 34, 14, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainermBrian, -1 ;allen
	object_event 26, 15, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerfJenn, -1 ;cybil
	object_event 10,  9, SPRITE_YOUNGSTER, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerPsychicKenan, -1 ;phil
	object_event 30,  8, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44MaxRevive, EVENT_ROUTE_44_MAX_REVIVE
	object_event 45,  4, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44UltraBall, EVENT_ROUTE_44_ULTRA_BALL
	object_event 14,  9, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route44MaxRepel, EVENT_ROUTE_44_MAX_REPEL
