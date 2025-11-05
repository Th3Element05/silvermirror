	object_const_def

EcruteakPokecenter1F_MapScripts:
	def_scene_scripts

	def_callbacks
	
EcruteakPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

EcruteakPokecenter1FPokefanMScript:
	jumptextfaceplayer EcruteakPokecenter1FPokefanMText
EcruteakPokecenter1FPokefanMText:
;	text "The way the KIMONO"
;	line "GIRLS dance is"
;
;	para "marvelous. Just"
;	line "like the way they"
;	cont "use their #MON."
;	done
;
;EcruteakPokecenter1FPokefanMTextMobile:
	text "You must be hoping"
	line "to battle more"
	cont "people, right?"

	para "There's apparently"
	line "some place where"
	cont "trainers gather."

	para "Where, you ask?"

	para "It's a little past"
	line "OLIVINE CITY."
	done

EcruteakPokecenter1FCooltrainerFScript:
	jumptextfaceplayer EcruteakPokecenter1FCooltrainerFText
EcruteakPokecenter1FCooltrainerFText:
	text "MORTY, the GYM"
	line "LEADER, is soooo"
	cont "cool."

	para "His #MON are"
	line "really tough too."
	done

EcruteakPokecenter1FGymGuideScript:
	jumptextfaceplayer EcruteakPokecenter1FGymGuideText
EcruteakPokecenter1FGymGuideText:
	text "LAKE OF RAGE…"

	para "I wonder why it's"
	line "called that?"

	para "It's just full of"
	line "MAGIKARP…"
	done

EcruteakPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  7, ECRUTEAK_CITY, 6
	warp_event  4,  7, ECRUTEAK_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FNurseScript, -1
	object_event  7,  6, SPRITE_POKEFAN_M, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FPokefanMScript, -1
	object_event  1,  4, SPRITE_COOLTRAINER_F, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FCooltrainerFScript, -1
	object_event  7,  1, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, EcruteakPokecenter1FGymGuideScript, -1
;	object_event  0,  7, SPRITE_BILL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_ECRUTEAK_POKE_CENTER_BILL
