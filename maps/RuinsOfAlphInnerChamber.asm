	object_const_def

RuinsOfAlphInnerChamber_MapScripts:
	def_scene_scripts
	scene_script RuinsOfAlphInnerChamberNoopScene,            SCENE_RUINSOFALPHINNERCHAMBER_NOOP
	scene_script RuinsOfAlphInnerChamberStrangePresenceScene, SCENE_RUINSOFALPHINNERCHAMBER_STRANGE_PRESENCE

	def_callbacks

RuinsOfAlphInnerChamberNoopScene:
	end

RuinsOfAlphInnerChamberStrangePresenceScene:
	sdefer RuinsOfAlphInnerChamberStrangePresenceScript
	end

RuinsOfAlphInnerChamberStrangePresenceScript:
	opentext
	writetext RuinsOfAlphStrangePresenceText
	waitbutton
	closetext
	setscene SCENE_RUINSOFALPHINNERCHAMBER_NOOP
	setevent EVENT_MADE_UNOWN_APPEAR_IN_RUINS
;	clearevent EVENT_RUINS_OF_ALPH_OUTSIDE_TOURIST_FISHER
	end

RuinsOfAlphStrangePresenceText:
	text "There is a strange"
	line "presence here…"
	done

RuinsOfAlphInnerChamberScientist1Script:
	jumptextfaceplayer RuinsOfAlphInnerChamberScientist1Text
RuinsOfAlphInnerChamberScientist1Text:
	text "The patterns on"
	line "the walls are so"
	cont "interesting!"

	para "We must find out"
	line "what they mean!"
	done

;	text "This is a big"
;	line "room, but there's"
;	cont "nothing here."
;	done

RuinsOfAlphInnerChamberScientist2Script:
	jumptextfaceplayer RuinsOfAlphInnerChamberScientist2Text
RuinsOfAlphInnerChamberScientist2Text:
	text "This place has a"
	line "mystical quality"
	cont "to it."

	para "It feels sort of"
	line "ethereal even."
	done

;RuinsOfAlphInnerChamberGrampsScript:
;	jumptextfaceplayer RuinsOfAlphInnerChamberGrampsText
;RuinsOfAlphInnerChamberGrampsText:
;	text "Ancient buildings"
;	line "are often tombs of"
;	cont "kings."
;
;	para "Like the pyramids,"
;	line "for instance."
;	done

RuinsOfAlphInnerChamberStatue:
	jumptext RuinsOfAlphInnerChamber_StatueText
RuinsOfAlphInnerChamber_StatueText:
	text "It's a statue of an"
	line "ancient #MON."
	done

RuinsOfAlphInnerChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10, 13, RUINS_OF_ALPH_OUTSIDE, 5
	warp_event  3, 15, RUINS_OF_ALPH_HO_OH_CHAMBER, 3
	warp_event  4, 15, RUINS_OF_ALPH_HO_OH_CHAMBER, 4
	warp_event 15,  3, RUINS_OF_ALPH_KABUTO_CHAMBER, 3
	warp_event 16,  3, RUINS_OF_ALPH_KABUTO_CHAMBER, 4
	warp_event  3, 21, RUINS_OF_ALPH_OMANYTE_CHAMBER, 3
	warp_event  4, 21, RUINS_OF_ALPH_OMANYTE_CHAMBER, 4
	warp_event 15, 23, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 3
	warp_event 16, 23, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 4

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  5,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  8,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 11,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 14,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17,  3, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  2,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  5,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  8,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 11,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 14,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17,  8, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  2, 13, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17, 13, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  2, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  5, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  8, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 11, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 14, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17, 18, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  2, 23, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  5, 23, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event  8, 23, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 11, 23, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 14, 23, BGEVENT_READ, RuinsOfAlphInnerChamberStatue
	bg_event 17, 23, BGEVENT_READ, RuinsOfAlphInnerChamberStatue

	def_object_events
	object_event  5, 12, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphInnerChamberScientist1Script, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_SCIENTISTS
	object_event 14, 13, SPRITE_SCIENTIST, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphInnerChamberScientist2Script, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_SCIENTISTS
;	object_event 11, 19, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, RuinsOfAlphInnerChamberGrampsScript, EVENT_RUINS_OF_ALPH_INNER_CHAMBER_TOURISTS
