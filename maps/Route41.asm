	object_const_def
;	const ROUTE41_RIVAL1
;	const ROUTE41_RIVAL2
;	const ROUTE41_RIVAL3
;	const ROUTE41_RIVAL4
;	const ROUTE41_RIVAL5
;	const ROUTE41_SWIMMER_GIRL1
;	const ROUTE41_SWIMMER_GIRL2
;	const ROUTE41_SWIMMER_GIRL3
;	const ROUTE41_SWIMMER_GIRL4
;	const ROUTE41_SWIMMER_GIRL5

Route41_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSwimmerfBriana:
	trainer SWIMMERF, BRIANA, EVENT_BEAT_SWIMMERF_BRIANA, SwimmerfBrianaSeenText, SwimmerfBrianaBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerfBrianaAfterBattleText
	waitbutton
	closetext
	end

SwimmerfBrianaSeenText:
	text "I'm on my way to"
	line "WHIRL ISLANDS."

	para "I'm going explor-"
	line "ing with friends."
	done

SwimmerfBrianaBeatenText:
	text "Is that how you do"
	line "it?"
	done

SwimmerfBrianaAfterBattleText:
	text "There's supposed"
	line "to be a big #-"
	cont "MON deep beneath"
	cont "WHIRL ISLANDS."

	para "I wonder what it"
	line "could be?"
	done

TrainerSwimmermCody:
	trainer SWIMMERM, CODY, EVENT_BEAT_SWIMMERM_CODY, SwimmermCodySeenText, SwimmermCodyBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmermCodyAfterBattleText
	waitbutton
	closetext
	end

SwimmermCodySeenText:
	text "The water's warm"
	line "here. I'm loose"
	cont "and limber."

	para "Sure, I'll take"
	line "you on!"
	done

SwimmermCodyBeatenText:
	text "Yikes! I've got"
	line "prune skin!"
	done

SwimmermCodyAfterBattleText:
	text "Isn't it relaxing"
	line "just floating like"
	cont "this?"
	done

;TrainerSwimmermGeorge:
;	trainer SWIMMERM, GEORGE, EVENT_BEAT_SWIMMERM_GEORGE, SwimmermGeorgeSeenText, SwimmermGeorgeBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext SwimmermGeorgeAfterBattleText
;	waitbutton
;	closetext
;	end
;
;SwimmermGeorgeSeenText:
;	text "I'm a bit tired."
;	line "If I win, lend me"
;	cont "your #MON."
;	done
;
;SwimmermGeorgeBeatenText:
;	text "Pant, pant…"
;	done
;
;SwimmermGeorgeAfterBattleText:
;	text "It's so far to"
;	line "CIANWOOD."
;
;	para "But it's no easy"
;	line "return trip to"
;	cont "OLIVINE either."
;
;	para "What should I do?"
;	done

;TrainerSwimmerfSusie:
;	trainer SWIMMERF, SUSIE, EVENT_BEAT_SWIMMERF_SUSIE, SwimmerfSusieSeenText, SwimmerfSusieBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext SwimmerfSusieAfterBattleText
;	waitbutton
;	closetext
;	end
;
;SwimmerfSusieSeenText:
;	text "The weather is so"
;	line "beautiful, I'm in"
;	cont "a daze!"
;	done
;
;SwimmerfSusieBeatenText:
;	text "Ohhh!"
;	done
;
;SwimmerfSusieAfterBattleText:
;	text "A sunburn is the"
;	line "worst for skin."
;
;	para "But I don't use"
;	line "sunblock."
;
;	para "I won't pollute"
;	line "the water."
;	done

TrainerSwimmermWes:
	trainer SWIMMERM, WES, EVENT_BEAT_SWIMMERM_WES, SwimmermWesSeenText, SwimmermWesBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmermWesAfterBattleText
	waitbutton
	closetext
	end

SwimmermWesSeenText:
	text "See those islands"
	line "that are blocked"
	cont "by whirlpools?"

	para "There just has to"
	line "be a secret!"
	done

SwimmermWesBeatenText:
	text "What's the secret"
	line "to your strength?"
	done

SwimmermWesAfterBattleText:
	text "It was a dark and"
	line "stormy night…"

	para "I saw this giant"
	line "#MON flying"
	cont "from the islands."

	para "It was scattering"
	line "feathers from its"
	cont "silver wings."
	done

TrainerSwimmerfHannah:
	trainer SWIMMERF, HANNAH, EVENT_BEAT_SWIMMERF_HANNAH, SwimmerfHannahSeenText, SwimmerfHannahBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerfHannahAfterBattleText
	waitbutton
	closetext
	end

SwimmerfHannahSeenText:
	text "If you need to"
	line "rest, just tread"
	cont "water."

	para "You'll get your"
	line "wind back, so you"
	cont "can keep swimming."
	done

SwimmerfHannahBeatenText:
	text "Oh! You have more"
	line "energy than I do."
	done

SwimmerfHannahAfterBattleText:
	text "I heard roars from"
	line "deep inside the"
	cont "ISLANDS."
	done

TrainerSwimmermCarlos:
	trainer SWIMMERM, CARLOS, EVENT_BEAT_SWIMMERM_CARLOS, SwimmermCarlosSeenText, SwimmermCarlosBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmermCarlosAfterBattleText
	waitbutton
	closetext
	end

SwimmermCarlosSeenText:
	text "The waves are wild"
	line "here."

	para "They tire you out"
	line "while you swim."
	done

SwimmermCarlosBeatenText:
	text "I'm beat!"
	done

SwimmermCarlosAfterBattleText:
	text "The currents keep"
	line "me from reaching"
	cont "that island."
	done

TrainerSwimmerfEloise:
	trainer SWIMMERF, ELOISE, EVENT_BEAT_SWIMMERF_ELOISE, SwimmerfEloiseSeenText, SwimmerfEloiseBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerfEloiseAfterBattleText
	waitbutton
	closetext
	end

SwimmerfEloiseSeenText:
	text "You look so ele-"
	line "gant, riding your"
	cont "#MON."
	done

SwimmerfEloiseBeatenText:
	text "I'm crushed…"
	done

SwimmerfEloiseAfterBattleText:
	text "Wasn't there a hit"
	line "song about a boy"
	cont "riding a LAPRAS?"
	done

TrainerSwimmermMack:
	trainer SWIMMERM, MACK, EVENT_BEAT_SWIMMERM_MACK, SwimmermMackSeenText, SwimmermMackBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmermMackAfterBattleText
	waitbutton
	closetext
	end

SwimmermMackSeenText:
	text "Are you seeking"
	line "the secrets of"
	cont "WHIRL ISLANDS?"
	done

SwimmermMackBeatenText:
	text "Ooh, you've got"
	line "great endurance!"
	done

SwimmermMackAfterBattleText:
	text "A secret about"
	line "WHIRL ISLANDS…"

	para "It's pitch-black"
	line "inside!"
	done

TrainerSwimmerfKyrie:
	trainer SWIMMERF, KYRIE, EVENT_BEAT_SWIMMERF_KYRIE, SwimmerfKyrieSeenText, SwimmerfKyrieBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SwimmerfKyrieAfterBattleText
	waitbutton
	closetext
	end

SwimmerfKyrieSeenText:
	text "At night, STARYU"
	line "gather near the"
	cont "water's surface."
	done

SwimmerfKyrieBeatenText:
	text "Oh, dear…"
	done

SwimmerfKyrieAfterBattleText:
	text "The clusters of"
	line "STARYU light up"
	cont "at the same time."

	para "It's so beautiful,"
	line "it's scary."
	done

Route41Rock: ; unreferenced
	jumpstd SmashRockScript

Route41HiddenMaxEther:
	hiddenitem MAX_ETHER, EVENT_ROUTE_41_HIDDEN_MAX_ETHER

Route41_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 12, 17, WHIRL_ISLAND_NW, 1
	warp_event 36, 19, WHIRL_ISLAND_NE, 1
	warp_event 12, 37, WHIRL_ISLAND_SW, 1
	warp_event 36, 45, WHIRL_ISLAND_SE, 1

	def_coord_events

	def_bg_events
	bg_event  9, 35, BGEVENT_ITEM, Route41HiddenMaxEther

	def_object_events
	object_event 17,  4, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfBriana, -1 ;kaylee
	object_event 32,  6, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCody, -1 ;charlie
;	object_event 46,  8, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermGeorge, -1 ;george
;	object_event 23, 19, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfSusie, -1 ;susie
	object_event 20, 26, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermWes, -1 ;berke
	object_event 44, 28, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerSwimmerfHannah, -1 ;kara
	object_event 32, 30, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermCarlos, -1 ;kirk
	object_event 27, 34, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 3, TrainerSwimmerfEloise, -1 ;denise
	object_event 19, 46, SPRITE_SWIMMER_GUY, SPRITEMOVEDATA_SPINCOUNTERCLOCKWISE, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerSwimmermMack, -1 ;mathew
	object_event  9, 50, SPRITE_SWIMMER_GIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerSwimmerfKyrie, -1 ;wendy
