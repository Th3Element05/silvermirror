	object_const_def

Route27East_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerCooltrainerMFelix:
	trainer COOLTRAINERM, FELIX, EVENT_BEAT_COOLTRAINERM_FELIX, CooltrainerMFelixSeenText, CooltrainerMFelixBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerMFelixAfterBattleText
	waitbutton
	closetext
	end

CooltrainerMFelixSeenText:
	text "Hm? You're good,"
	line "aren't you?"
	done

CooltrainerMFelixBeatenText:
	text "Just as I thought!"
	done

CooltrainerMFelixAfterBattleText:
	text "A good trainer can"
	line "recognize other"
	cont "good trainers."
	done

TrainerCooltrainerFMira:
	trainer COOLTRAINERF, MEGAN, EVENT_BEAT_COOLTRAINERF_MIRA, CooltrainerFMiraSeenText, CooltrainerFMiraBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CooltrainerFMiraAfterBattleText
	waitbutton
	closetext
	end

CooltrainerFMiraSeenText:
	text "You shouldn't"
	line "underestimate the"
	cont "wild #MON in"
	roll "these parts."
	done

CooltrainerFMiraBeatenText:
	text "Oh! You're much"
	line "too strong!"
	done

CooltrainerFMiraAfterBattleText:
	text "You're just a kid,"
	line "but you're not to"
	cont "be underestimated"
	roll "either."
	done

;CooltrainerFMiraSeenText:
;	text "It's rare to see"
;	line "anyone come here."
;
;	para "Are you training"
;	line "on your own?"
;	done
;
;CooltrainerFMiraBeatenText:
;	text "Oh! You're really"
;	line "strong!"
;	done
;
;CooltrainerFMiraAfterBattleText:
;	text "I'm checking out"
;	line "pre- and post-"
;	cont "evolution #MON."
;
;	para "Evolution really"
;	line "does make #MON"
;	cont "stronger."
;
;	para "But evolved forms"
;	line "also learn moves"
;	cont "more slowly."
;	done

TohjoFallsEastSign:
	jumptext TohjoFallsEastSignText
TohjoFallsEastSignText:
	text "TOHJO FALLS"

	para "THE LINK BETWEEN"
	line "KANTO AND JOHTO"
	done

Route27RareCandy:
	itemball RARE_CANDY

Route27East_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  8,  5, TOHJO_FALLS, 2

	def_coord_events

	def_bg_events
	bg_event  7,  7, BGEVENT_READ, TohjoFallsEastSign

	def_object_events
	object_event 46,  7, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerCooltrainerMFelix, -1
	object_event 23,  5, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 3, TrainerCooltrainerFMira, -1
	object_event 25, 12, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route27RareCandy, EVENT_ROUTE_27_RARE_CANDY
