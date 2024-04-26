	object_const_def

RocketHideoutB4F_MapScripts:
	def_scene_scripts

	def_callbacks

;TrainerHikerBailey:
;	trainer HIKER, BAILEY, EVENT_BEAT_HIKER_BAILEY, HikerBaileySeenText, HikerBaileyBeatenText, 0, .Script
;.Script:
;	endifjustbattled
;	opentext
;	writetext HikerBaileyAfterBattleText
;	waitbutton
;	closetext
;	end
;
;HikerBaileySeenText:
;	text "This tunnel goes"
;	line "a long way, kid!"
;	done
;
;HikerBaileyBeatenText:
;	text "Doh!"
;	line "You win!"
;	done
;
;HikerBaileyAfterBattleText:
;	text "Watch for ONIX!"
;	line "It can put the"
;	cont "squeeze on you!"
;	done

RocketHideoutB4F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 10, ROCKET_HIDEOUT_B3F, 2 ; 1

	def_coord_events

	def_bg_events

	def_object_events
;	object_event  7,  5, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 4, TrainerHikerBailey, -1
