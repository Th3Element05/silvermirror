	object_const_def

FastShipCabins_North_MapScripts:
	def_scene_scripts

	def_callbacks

FastShipBed:
	opentext
	writetext FastShipBedText1
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special FadeInQuickly
	opentext
	writetext FastShipBedText2
	waitbutton
	closetext
	checkevent EVENT_FAST_SHIP_HAS_ARRIVED
	iftrue .AlreadyArrived
	checkevent EVENT_FAST_SHIP_COMPLETED_FIRST_TRIP
	iftrue .CanArrive
.AlreadyArrived:
	end

.CanArrive:
	playsound SFX_ELEVATOR_END
	pause 30
	checkevent EVENT_FAST_SHIP_DESTINATION_OLIVINE
	iftrue .ArrivedOlivine
	opentext
	writetext FastShipArrivedVermilionText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

.ArrivedOlivine:
	opentext
	writetext FastShipArrivedOlivineText
	waitbutton
	closetext
	setevent EVENT_FAST_SHIP_HAS_ARRIVED
	end

FastShipBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	done

FastShipBedText2:
	text "Ah, refreshed and"
	line "restored!"
	done

FastShipArrivedOlivineText:
	text "FAST SHIP S.S.AQUA"
	line "has arrived in"
	cont "OLIVINE CITY."
	done

FastShipArrivedVermilionText:
	text "FAST SHIP S.S.AQUA"
	line "has arrived in"
	cont "VERMILION CITY."
	done


; trainers
TrainerGentlemanRichard:
	trainer GENTLEMAN, RICHARD, EVENT_BEAT_GENTLEMAN_RICHARD, GentlemanRichardSeenText, GentlemanRichardBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext GentlemanRichardAfterBattleText
	waitbutton
	closetext
	end

GentlemanRichardSeenText:
	text "I love going on"
	line "trips with my"
	cont "granddaughters!"
	done

GentlemanRichardBeatenText:
	text "Oh…"
	done

GentlemanRichardAfterBattleText:
	text "My granddaughters"
	line "are pretty good"
	cont "trainers, too!"
	done

TrainerTwinsJoAndZoe:
	trainer TWINS, JOANDZOE, EVENT_BEAT_TWINS_JOANDZOE, TwinsJoAndZoeSeenText, TwinsJoAndZoeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext TwinsJoAndZoeAfterBattleText
	waitbutton
	closetext
	end

TwinsJoAndZoeSeenText:
	text "ZOE: We're bored."
	line "JO: Play with us!"
	done

TwinsJoAndZoeBeatenText:
	text "Hey, losing isn't"
	line "fun!"
	done

TwinsJoAndZoeAfterBattleText:
	text "Grandpa teaches us"
	line "all about #MON!"
	done

TrainerPicnickerRobin:
	trainer PICNICKER, ROBIN, EVENT_BEAT_PICNICKER_ROBIN, PicnickerRobinSeenText, PicnickerRobinBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext PicnickerRobinAfterBattleText
	waitbutton
	closetext
	end

PicnickerRobinSeenText:
	text "Eek!"
	done

PicnickerRobinBeatenText:
	text "This is a private"
	line "cabin!"
	done

PicnickerRobinAfterBattleText:
	text "What are you doing"
	line "barging into other"
	cont "people's rooms?"
	done

TrainerCoolDuoElanAndIda:
	trainer COOL_DUO, ELANANDIDA, EVENT_BEAT_COOL_DUO_ELANANDIDA, CoolDuoElanAndIdaSeenText, CoolDuoElanAndIdaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoolDuoElanAndIdaAfterBattleText
	waitbutton
	closetext
	end

CoolDuoElanAndIdaSeenText:
	text "Excuse me, we're"
	line "a little busy."
	done

CoolDuoElanAndIdaBeatenText:
	text "Ooh, wow."
	line "You're tough!"
	done

CoolDuoElanAndIdaAfterBattleText:
	text "Would you mind"
	line "giving us some"
	cont "privacy?"
	done


; npcs
FastShipCabinsNorthGranny:
	checkevent EVENT_FAST_SHIP_TRAINERS_1A
	iftrue .NoFamily
	jumptextfaceplayer FastShipCabinsNorthGrannyFamilyText

.NoFamily
	jumptextfaceplayer FastShipCabinsNorthGrannyAloneText

FastShipCabinsNorthGrannyFamilyText:
	text "I love taking my"
	line "granddaughters on"
	cont "trips!"

	para "Everything seems"
	line "more exciting with"
	cont "them around!"
	done

FastShipCabinsNorthGrannyAloneText:
	text "Its nice to get"
	line "away on your own"
	cont "from time to time."
	done


; bg events
FastShipCabinsNorthwestCabinTrashcan:
	jumpstd TrashCanScript


FastShipCabins_North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  1, FAST_SHIP_1F, 2
	warp_event 14,  1, FAST_SHIP_1F, 3
	warp_event 26,  1, FAST_SHIP_1F, 4
	warp_event 38,  1, FAST_SHIP_1F, 5

	def_coord_events

	def_bg_events
	bg_event  7,  2, BGEVENT_READ, FastShipBed
	bg_event  7,  3, BGEVENT_READ, FastShipBed
	bg_event  7,  7, BGEVENT_READ, FastShipCabinsNorthwestCabinTrashcan
	bg_event 16,  2, BGEVENT_READ, FastShipCabinsNorthwestCabinTrashcan
	bg_event 30,  2, BGEVENT_READ, FastShipCabinsNorthwestCabinTrashcan
	bg_event 42,  2, BGEVENT_READ, FastShipCabinsNorthwestCabinTrashcan

	def_object_events
	object_event 13,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerGentlemanRichard, EVENT_FAST_SHIP_TRAINERS_1A
	object_event 17,  4, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe, EVENT_FAST_SHIP_TRAINERS_1A
	object_event 17,  5, SPRITE_TWIN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_TRAINER, 1, TrainerTwinsJoAndZoe, EVENT_FAST_SHIP_TRAINERS_1A
	object_event 13,  5, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, FastShipCabinsNorthGranny, EVENT_FAST_SHIP_TRAINERS_1B
	object_event 26,  3, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerPicnickerRobin, EVENT_FAST_SHIP_TRAINERS_2A
	object_event 39,  6, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerCoolDuoElanAndIda, EVENT_FAST_SHIP_TRAINERS_3A
	object_event 40,  6, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 0, TrainerCoolDuoElanAndIda, EVENT_FAST_SHIP_TRAINERS_3A
