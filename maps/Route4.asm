	object_const_def

Route4_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_OBJECTS, .CaveCooltrainerCaveBlock

;.CaveCooltrainerCaveBlock:
;	readvar VAR_BADGES
;	ifequal NUM_BADGES, .CaveCooltrainerDissapear
;	appear ROUTE4_CAVE_COOLTRAINER_M
;	endcallback

;.CaveCooltrainerDissapear:
;	disappear ROUTE4_CAVE_COOLTRAINER_M
;	endcallback

TrainerLassAlice:
	trainer LASS, ALICE, EVENT_BEAT_LASS_ALICE, LassAliceSeenText, LassAliceBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext LassAliceAfterBattleText
	waitbutton
	closetext
	end

LassAliceSeenText:
	text "I came to get my"
	line "mushroom #MON!"
	done

LassAliceBeatenText:
	text "Oh! My cute"
	line "mushroom #MON!"
	done

LassAliceAfterBattleText:
	text "There might not"
	line "be any more"
	cont "mushrooms here."

	para "I think I got"
	line "them all."
	done

Route4CooltrainerScript:
	jumptextfaceplayer Route4CooltrainerText
Route4CooltrainerText:
	text "Ouch! I tripped"
	line "over a rocky"
	cont "#MON, GEODUDE!"
	done

Route4Sign:
	jumptext Route4SignText
Route4SignText:
	text "ROUTE 4"
	line "MT.MOON -"
	cont "CERULEAN CITY"
	done

Route4TMWhirlwind:
	itemball TM_WHIRLWIND

Route4HiddenGreatBall:
	hiddenitem GREAT_BALL, EVENT_ROUTE_4_HIDDEN_GREAT_BALL

Route4MtMoonSign:
	jumptext Route3MtMoonSignText
Route3MtMoonSignText:
	text "MT.MOON"
	line "Tunnel Entrance"
	done

Route4MtMoonPokecenterSign:
	jumpstd PokecenterSignScript

Route4_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  5, MOUNT_MOON, 4
	warp_event  9,  5, MOUNT_MOON_POKECENTER_1F, 1
	warp_event 24,  5, MOUNT_MOON, 13

	def_coord_events

	def_bg_events
	bg_event 15,  7, BGEVENT_READ, Route4MtMoonSign
	bg_event 10,  5, BGEVENT_READ, Route4MtMoonPokecenterSign
	bg_event 27,  7, BGEVENT_READ, Route4Sign
	bg_event 36,  3, BGEVENT_ITEM, Route4HiddenGreatBall

	def_object_events
	object_event  7,  8, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route4CooltrainerScript, -1
	object_event 57,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerLassAlice, -1
	object_event 51,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_ITEMBALL, 0, Route4TMWhirlwind, EVENT_ROUTE_4_TM_WHIRLWIND
;	object_event 72,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 1, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0,ObjectEvent, 0
