	object_const_def

SproutTower1F_MapScripts:
	def_scene_scripts

	def_callbacks

TrainerSageChow:
	trainer SAGE, CHOW, EVENT_BEAT_SAGE_CHOW, SageChowSeenText, SageChowBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext SageChowAfterBattleText
	waitbutton
	closetext
	end

SageChowSeenText:
	text "We stand guard in"
	line "this tower."

	para "Here, we express"
	line "our gratitude to"
	cont "honor all #MON."
	done

SageChowBeatenText:
	text "Th-Thank you!"
	done

SageChowAfterBattleText:
	text "All living beings"
	line "coexist through"
	cont "cooperation."

	para "We must always be"
	line "thankful for this."
	done

SproutTower1FSage1Script:
	jumptextfaceplayer SproutTower1FSage1Text
SproutTower1FSage1Text:
	text "Only if you reach"
	line "the top will you"
	cont "obtain an HM."
	done

SproutTower1FSage2Script:
	jumptextfaceplayer SproutTower1FSage2Text
SproutTower1FSage2Text:
	text "SPROUT TOWER was"
	line "built long ago"
	cont "as a place for"
	roll "#MON training."
	done

SproutTower1FGrannyScript:
	jumptextfaceplayer SproutTower1FGrannyText
SproutTower1FGrannyText:
	text "A BELLSPROUT over"
	line "100 feet tall…"

	para "People say that it"
	line "became the center"
	cont "pillar here."
	done

SproutTower1FTeacherScript:
	jumptextfaceplayer SproutTower1FTeacherText
SproutTower1FTeacherText:
	text "See the pillar"
	line "shaking?"

	para "People are train-"
	line "ing upstairs."
	done

SproutTower1FStatue:
	jumptext SproutTower1FStatueText
SproutTower1FStatueText:
	text "A #MON statue…"

	para "It looks very"
	line "distinguished."
	done

SproutTower1FParlyzHeal:
	itemball PARLYZ_HEAL

SproutTower1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 15, VIOLET_CITY, 7
	warp_event  8, 15, VIOLET_CITY, 7
	warp_event  4,  4, SPROUT_TOWER_2F_3F, 2
	warp_event  0,  6, SPROUT_TOWER_2F_3F, 3
	warp_event 15,  3, SPROUT_TOWER_2F_3F, 4

	def_coord_events

	def_bg_events
	bg_event  5, 15, BGEVENT_READ, SproutTower1FStatue
	bg_event 10, 15, BGEVENT_READ, SproutTower1FStatue

	def_object_events
	object_event  1,  5, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 4, TrainerSageChow, -1
;	object_event  7,  4, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SproutTower1FSage1Script, -1
	object_event  4,  7, SPRITE_SAGE, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SproutTower1FSage2Script, -1
	object_event  9, 12, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SproutTower1FGrannyScript, -1
	object_event  7,  9, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SproutTower1FTeacherScript, -1
	object_event 14,  7, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower1FParlyzHeal, EVENT_SPROUT_TOWER_1F_PARLYZ_HEAL
