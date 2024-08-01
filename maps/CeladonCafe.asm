	object_const_def

CeladonCafe_MapScripts:
	def_scene_scripts

	def_callbacks

CeladonCafeChef:
	jumptextfaceplayer CeladonCafeChefText
CeladonCafeChefText:
	text "Hi!"

	para "We're taking a"
	line "break now."
	done

CeladonCafeWoman:
	jumptextfaceplayer CeladonCafeWomanText
CeladonCafeWomanText:
	text "My #MON are"
	line "weak, so I often"
	cont "have to go to the"
	cont "DRUG STORE."
	done

CeladonCafeFisher:
	jumptextfaceplayer CeladonCafeFisherText
CeladonCafeFisherText:
	text "Munch..."

	para "The man in the"
	line "corner lost it"
	cont "all at the slots."
	done

CeladonCafeMan:
	jumptextfaceplayer CeladonCafeManText
CeladonCafeManText:
	text "Psst! There's a"
	line "basement under"
	cont "the GAME CORNER."
	done

CeladonCafeGamblerScript:
	checkevent EVENT_GOT_COIN_CASE
	iftrue .Skip
	faceplayer
	opentext
	writetext CeladonCafeLostItAllText
	promptbutton
	verbosegiveitem COIN_CASE
	setevent EVENT_GOT_COIN_CASE
	waitbutton
	closetext
	end

.Skip
	jumptextfaceplayer CeladonCafeGamblerText
CeladonCafeGamblerText:
	text "I always thought"
	line "I was going to"
	cont "win it back..."
	done

CeladonCafeLostItAllText:
	text "Go ahead! Laugh!"

	para "I'm flat out"
	line "busted!"

	para "No more slots for"
	line "me! I'm going"
	cont "straight!"

	para "Here! I won't be"
	line "needing this any-"
	cont "more!"
	done

EatathonContestPoster:
	jumptext EatathonContestPosterText
EatathonContestPosterText:
	text "Eatathon Contest!"
	line "No time limit!"

	para "A battle without"
	line "end! The biggest"
	cont "muncher gets it"
	cont "all for free!"
	done

CeladonCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4,  7, CELADON_CITY, 9
	warp_event  5,  7, CELADON_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, EatathonContestPoster

	def_object_events
	object_event  8,  4, SPRITE_CHEF, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeChef, -1
	object_event  7,  2, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeWoman, -1
	object_event  1,  4, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeMan, -1
	object_event  5,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonCafeFisher, -1
	object_event  0,  1, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CeladonCafeGamblerScript, -1
