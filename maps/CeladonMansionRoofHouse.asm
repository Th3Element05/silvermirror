	object_const_def
	const CELADONMANSIONROOF_EEVEE_POKE_BALL

CeladonMansionRoofHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, CeladonMansionRoofTilesCallback

CeladonMansionRoofTilesCallback:
	changeblock 2, 2, $14 ; table top left
	changeblock 2, 4, $18 ; table lower left
	endcallback

CeladonMansionEeveePokeballScript:
	refreshscreen
	pokepic EEVEE
	cry EEVEE
	waitbutton
	closepokepic
	checkevent EVENT_TALKED_TO_MAN_ABOUT_EEVEE
	iffalse .EeveeOwned
	opentext
	writetext CeladonMansionRoofTakeEeveeText
	yesorno
	iffalse .DontTakeEevee
	disappear CELADONMANSIONROOF_EEVEE_POKE_BALL
	writetext CeladonMansionRoofReceivedEeveeText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke EEVEE, 5
	closetext
	setevent EVENT_GOT_EEVEE_FROM_CELADON_MANSION
	end

.EeveeOwned
	jumptext CeladonMansionRoofEeveeText

.DontTakeEevee
	writetext CeladonMansionRoofDontTakeEeveeText
	waitbutton
	closetext
	end

CeladonMansionRoofEeveeText:
	text "It's EEVEE!"

	para "You should talk"
	line "to its owner."
	done

CeladonMansionRoofTakeEeveeText:
	text "It's EEVEE!"
	line "Take it?"
	done

CeladonMansionRoofReceivedEeveeText:
	text "<PLAYER> received"
	line "EEVEE!"
	done

CeladonMansionRoofDontTakeEeveeText:
	text "<PLAYER> left"
	line "EEVEE here."
	done

CeladonMansionRoofHousePharmacistScript:
	checkevent EVENT_GOT_EEVEE_FROM_CELADON_MANSION
	iftrue .TakeCareOfEevee
	checkevent EVENT_TALKED_TO_MAN_ABOUT_EEVEE
	iftrue .BetterOffWithYou
	faceplayer
	opentext
	writetext CeladonMansionRoofPharmacistText
	waitbutton
	closetext
	setevent EVENT_TALKED_TO_MAN_ABOUT_EEVEE
	end

.TakeCareOfEevee
	jumptextfaceplayer CeladonMansionRoofTakeCareText

.BetterOffWithYou
	jumptextfaceplayer CeladonMansionRoofBetterOffText

CeladonMansionRoofPharmacistText:
	text "That #MON"
	line "is EEVEE. It was"
	cont "given to me as"
	cont "a gift."

	para "But, I'm not a"
	line "#MON trainer."

	para "EEVEE would be"
	line "happier with a"
	cont "#MON trainer"
	cont "like you."

	para "Please, take"
	line "EEVEE and make"
	cont "it happy!"
	done

CeladonMansionRoofTakeCareText:
	text "Take good care of"
	line "EEVEE for me!"
	done

CeladonMansionRoofBetterOffText:
	text "EEVEE will be"
	line "happier with a"
	cont "trainer like you!"
	done

CeladonMansionRoofBook:
	jumptext CeladonMansionRoofBookText
CeladonMansionRoofBookText:
	text "Its a magazine"
	line "of #MON facts!"

	para "EEVEE, the"
	line "EVOLUTION #MON"

	para "It evolves into"
	line "different forms"
	cont "when exposed to"
	cont "special STONEs."

	para "But EEVEE will"
	line "also evolve under"
	cont "other conditions!"

	para "As long as it is"
	line "happy enough!"
	done

CeladonMansionRoofHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CELADON_MANSION_ROOF, 3
	warp_event  3,  7, CELADON_MANSION_ROOF, 3

	def_coord_events

	def_bg_events
	bg_event  3,  4, BGEVENT_READ, CeladonMansionRoofBook

	def_object_events
	object_event  4,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansionEeveePokeballScript, EVENT_GOT_EEVEE_FROM_CELADON_MANSION
	object_event  2,  3, SPRITE_PHARMACIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CeladonMansionRoofHousePharmacistScript, -1
