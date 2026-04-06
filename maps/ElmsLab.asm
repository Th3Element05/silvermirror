	object_const_def
	const ELMSLAB_ELM
	const ELMSLAB_AIDE

ElmsLab_MapScripts:
	def_scene_scripts
	scene_script ElmsLabElmsNotHereScene, SCENE_ELMSLAB_ELMS_NOT_HERE
	scene_script ElmsLabNoop1Scene,       SCENE_ELMSLAB_ELM_OVERHEARS_PHONE_CALL
	scene_script ElmsLabNoop2Scene,       SCENE_ELMSLAB_NOOP

	def_callbacks

ElmsLabElmsNotHereScene:
	sdefer ElmsLabElmsNotHereScript
ElmsLabNoop1Scene:
ElmsLabNoop2Scene:
	end

ElmsLabElmsNotHereScript:
	playmusic MUSIC_NEW_BARK_TOWN
	applymovement ELMSLAB_AIDE, ElmsLabAideApproachesPlayerMovement
	opentext
	writetext ElmsLabAide_ElmsNotHereText
	waitbutton
	closetext
	applymovement ELMSLAB_AIDE, ElmsLabAideGoesBackMovement
	setscene SCENE_ELMSLAB_NOOP
	end

ElmsLabAideApproachesPlayerMovement:
	step RIGHT
	step RIGHT
	step DOWN
	step_end

ElmsLabAideGoesBackMovement:
	step LEFT
	step LEFT
	step UP
	step_end

ElmsAideScript:
	checkevent EVENT_ELMS_LAB_ELM
	iftrue .ElmsNotHere
	jumptextfaceplayer ElmsLabAide_DefaultText

.ElmsNotHere:
	jumptextfaceplayer ElmsLabAide_ElmsNotHereText

ElmsLabAide_DefaultText:
	text "I study #MON as"
	line "PROF.ELM's AIDE."
	done

ElmsLabAide_ElmsNotHereText:
	text "PROF.ELM isn't"
	line "here right now."

	para "I'm not sure where"
	line "he went."

	para "Maybe he went to"
	line "MR.#MON's house"
	cont "on ROUTE 30?"
	done

ElmsLabElmScript:
	checkevent EVENT_MET_PROF_ELM
	iffalse .MeetElmScript
	checkevent EVENT_CLEARED_RADIO_TOWER
	iftrue .AfterRadioTower
	checkevent EVENT_OAK_CALLED_ABOUT_RADIO_TOWER
	iftrue .SaveOak
	; in case you talk to elm again before oak calls
	jumptextfaceplayer ElmsLabElm_ThanksForShowingMeText

.MeetElmScript:
;	playmusic MUSIC_PROF_ELM ;this is already the map music
	faceplayer
	opentext
	writetext ElmsLabElm_MeetElmText
	waitbutton
	closetext
;	special RestartMapMusic
	setevent EVENT_MET_PROF_ELM
	clearevent EVENT_MR_POKEMONS_HOUSE_MR_POKEMON
	specialphonecall SPECIALCALL_RADIOTOWER
	end

.SaveOak:
	checkscene
	ifequal SCENE_ELMSLAB_ELM_OVERHEARS_PHONE_CALL, ElmsLabTellElmAboutPhoneCall
	jumptextfaceplayer ElmsLabElm_SaveOakText

.AfterRadioTower:
	faceplayer
	opentext
	writetext ElmsLabElm_OakIsOkayText
	checkevent EVENT_WISE_TRIO_EXPLAINED_CLEAR_BELL
	iftrue .DoneHere
	promptbutton
	writetext ElmsLabElm_RemindEcruteakText
.DoneHere
	waitbutton
	closetext
	end

ElmsLabElm_MeetElmText:
	text "I'm PROF.ELM, nice"
	line "to meet you."

	para "You're <PLAYER>?"
	line "I've heard a lot"
	cont "about you lately!"

	para "Congratulations on"
	line "becoming the new"
	cont "LEAGUE CHAMPION!"

	para "<……><……>"

	para "What? You want to"
	line "show me something?"

	para "That feather, its"
	line "a RAINBOW WING!"

	para "That came from the"
	line "legendary #MON,"
	cont "HO-OH!"

	para "No one has seen"
	line "HO-OH in a very"
	cont "long time."

	para "Where in the world"
	line "did you get that?"

	para "<……><……>"

	para "So you really saw"
	line "HO-OH?"

	para "I wonder if its"
	line "finally returning"
	cont "to its roost on"
	roll "TIN TOWER?"

	para "<PLAYER>, I think"
	line "you should show"
	cont "that RAINBOW WING"
	roll "to the sages at"
	cont "the TIN TOWER in"
	roll "ECRUTEAK CITY."
	done

ElmsLabElm_ThanksForShowingMeText:
	text "Thanks for showing"
	line "the RAINBOW WING"
	cont "to me!"
	done

ElmsLabElm_OakIsOkayText:
	text "PROF.OAK is okay?"
	line "That's a relief!"
	done

ElmsLabElm_RemindEcruteakText:
	text "Did you ever show"
	line "the RAINBOW WING"
	cont "to the sages at"
	roll "the TIN TOWER?"

	para "I'm sure they will"
	line "be very interested"
	cont "to see it!"
	done

ElmsLabElmOverhearsPhoneCallScript:
	turnobject PLAYER, UP
ElmsLabTellElmAboutPhoneCall:
	setlasttalked ELMSLAB_ELM
	faceplayer
	opentext
	writetext ElmsLabElm_OverheardPhoneCallText
	promptbutton
	closetext
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	opentext
	writetext ElmsLabElm_SaveOakText
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_NOOP
	end

ElmsLabElm_OverheardPhoneCallText:
	text "ELM: <PLAYER>?"
	line "You look worried…"

	para "Who was that on"
	line "the phone?"

	para "<……><……>"
	done

ElmsLabElm_SaveOakText:
	text "PROF.OAK is held"
	line "hostage at the"
	cont "RADIO TOWER!"

	para "You must go rescue"
	line "him right away!"
	done

; bg text
ElmsLabHealingMachine:
	opentext
	writetext ElmsLabHealingMachineText
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachineText:
	text "Would you like to"
	line "heal your #MON?"
	done

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

;ElmsLabWindow:
;	jumptext ElmsLabWindowText
;ElmsLabWindowText:
;	text "The window's open."
;
;	para "A pleasant breeze"
;	line "is blowing in."
;	done

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText
ElmsLabTrashcanText:
	text "The wrapper from"
	line "the snack PROF.ELM"
	cont "ate is in there…"
	done

ElmsLabPC:
	jumptext ElmsLabPCText
ElmsLabPCText:
	text "OBSERVATIONS ON"
	line "#MON EVOLUTION"

	para "…It says on the"
	line "screen…"
	done

ElmsLabServer:
	jumptext ElmsLabServerText
ElmsLabServerText:
	text "Its a server for"
	line "storing research"
	cont "data."
	done

ElmsLabBookshelf:
	jumpstd DifficultBookshelfScript

ElmsLab_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1

	def_coord_events
	coord_event  4,  5, SCENE_ELMSLAB_ELM_OVERHEARS_PHONE_CALL, ElmsLabElmOverhearsPhoneCallScript
	coord_event  5,  5, SCENE_ELMSLAB_ELM_OVERHEARS_PHONE_CALL, ElmsLabElmOverhearsPhoneCallScript

	def_bg_events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, ElmsLabServer
	bg_event  7,  1, BGEVENT_READ, ElmsLabServer
	bg_event  8,  1, BGEVENT_READ, ElmsLabServer
	bg_event  9,  1, BGEVENT_READ, ElmsLabServer
	bg_event  0,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  1,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  2,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  3,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  6,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  3, BGEVENT_READ, ElmsLabTrashcan
;	bg_event  5,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  3,  5, BGEVENT_DOWN, ElmsLabPC

	def_object_events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsLabElmScript, EVENT_ELMS_LAB_ELM
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsAideScript, -1
;	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
;	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
;	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
