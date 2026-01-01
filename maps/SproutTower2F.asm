	object_const_def

SproutTower2F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSageNico:
	trainer SAGE, NICO, EVENT_BEAT_SAGE_NICO, SageNicoSeenText, SageNicoBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageNicoAfterBattleText
	waitbutton
	closetext
	end

SageNicoSeenText:
	text "However hard we"
	line "battle, the TOWER"
	cont "will stand strong."
	done

SageNicoBeatenText:
	text "I fought hard but"
	line "I'm too weak."
	done

SageNicoAfterBattleText:
	text "The flexible pil-"
	line "lar protects the"
	cont "TOWER, even from"
	cont "earthquakes."
	done

TrainerSageNoe:
	trainer SAGE, NOE, EVENT_BEAT_SAGE_NOE, SageNoeSeenText, SageNoeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageNoeAfterBattleText
	waitbutton
	closetext
	end

SageNoeSeenText:
	text "…Sway like leaves"
	line "in the wind…"
	done

SageNoeBeatenText:
	text "Oh, I'm weak!"
	done

SageNoeAfterBattleText:
	text "I tried to copy"
	line "BELLSPROUT's"
	cont "gentle movements"
	cont "for battle…"

	para "But I didn't train"
	line "well enough."
	done

SproutTower2FStatue:
	jumptext SproutTower1FStatueText
;SproutTower2FStatueText:
;	text "A #MON statue…"
;
;	para "It looks very"
;	line "distinguished."
;	done

SproutTower2FXAccuracy:
	itemball X_ACCURACY

SproutTower2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  4, SPROUT_TOWER_1F, 3
	warp_event  0,  6, SPROUT_TOWER_1F, 4
	warp_event 15,  3, SPROUT_TOWER_1F, 5
	warp_event  8, 14, SPROUT_TOWER_3F, 1

	def_coord_events

	def_bg_events
	bg_event 10, 15, BGEVENT_READ, SproutTower2FStatue

	def_object_events
	object_event 12,  3, SPRITE_SAGE, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSageNico, -1 ;nico
	object_event  9, 14, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 5, TrainerSageNoe, -1 ;edmond
	object_event  3,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower2FXAccuracy, EVENT_SPROUT_TOWER_2F_X_ACCURACY
