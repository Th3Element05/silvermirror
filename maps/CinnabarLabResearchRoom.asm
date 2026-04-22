	object_const_def

CinnabarLabResearchRoom_MapScripts:
	def_scene_scripts

	def_callbacks

CinnabarLabMetronomeScientist:
	faceplayer
	opentext
	checkevent EVENT_GOT_TM35_METRONOME
	iftrue .GotMetronome
	writetext CinnabarLabMetronomeScientistText
	promptbutton
	verbosegiveitem TM_METRONOME
	setevent EVENT_GOT_TM35_METRONOME
.GotMetronome
	writetext CinnabarLabMetronomeScientistMetronomeText
	waitbutton
	closetext
	end

CinnabarLabMetronomeScientistText:
	text "Tch-tch-tch!"
	line "I made a cool TM!"

	para "It can cause all"
	line "kinds of fun!"
	done

CinnabarLabMetronomeScientistMetronomeText:
	text "Tch-tch-tch!"
	line "That's the sound"
	cont "of a METRONOME!"

	para "It tricks your"
	line "#MON's brain"
	cont "into using moves"
	roll "it doesn't know!"
	done

CinnabarLabEeveeScientist:
	jumptextfaceplayer CinnabarLabEeveeScientistText
CinnabarLabEeveeScientistText:
	text "EEVEE has 3 known"
	line "evolutions!"

	para "My research is"
	line "to discover if it"
	cont "has any other"
	roll "evolutions!"
	done

CinnabarLabEevee:
	opentext
	writetext CinnabarLabEeveeText
	cry EEVEE
	waitbutton
	closetext
	end

CinnabarLabEeveeText:
	ntag "EEVEE:"
	text "Vee-vee!"
	done

CinnabarLabEeveePC:
	jumptext CinnabarLabEeveePCText
CinnabarLabEeveePCText:
	text "Experiment 742:"

	para "I've been unable"
	line "to get EEVEE to"
	cont "evolve without"
	roll "using a STONE."

	para "EEVEE seems to be"
	line "frustrated from"
	cont "running tests all"
	roll "day."
	done

CinnabarLabLegendsPC:
	jumptext CinnabarLabLegendsPCText
CinnabarLabLegendsPCText:
	text "There's an e-mail"
	line "message!"

	para "From: #MON"
	line "RESEARCH TEAM"

	para "The 3 legendary"
	line "bird #MON are"
	cont "ARTICUNO, ZAPDOS"
	roll "and MOLTRES."

	para "Their whereabouts"
	line "are unknown."

	para "We plan to explore"
	line "the cavern close"
	cont "to CERULEAN."
	done

CinnabarLabResearchRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_LAB, 3
	warp_event  3,  7, CINNABAR_LAB, 3

	def_coord_events

	def_bg_events
	bg_event  0,  4, BGEVENT_UP, CinnabarLabLegendsPC
	bg_event  1,  4, BGEVENT_UP, CinnabarLabLegendsPC
;	bg_event  4,  4, BGEVENT_UP, CinnabarLabEeveePC
	bg_event  5,  4, BGEVENT_UP, CinnabarLabEeveePC

	def_object_events
	object_event  3,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabMetronomeScientist, -1
	object_event  4,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabEeveeScientist, -1
	object_event  6,  6, SPRITE_EEVEE, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarLabEevee, -1
