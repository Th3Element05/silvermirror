	object_const_def
	const ROUTE2GATE_SCIENTIST

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks

Route2GateOaksAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EXP_SHARE
	iftrue .GotExpShare
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .GotFlash
	writetext Route2GateOaksAideGiveFlashText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_FLASH
	setevent EVENT_GOT_HM05_FLASH
	writetext GotFlashPagerText
	promptbutton
	; fallthrough

.GotFlash
	writetext Route2GateOaksAideAskPokemonText
	yesorno
	iffalse .SaidNo
	readvar VAR_DEXCAUGHT
	getnum STRING_BUFFER_3
	ifless 10, .NotEnough
	writetext Route2GateOaksAideCongratsText
	promptbutton
	verbosegiveitem EXP_SHARE
	setevent EVENT_GOT_EXP_SHARE
	writetext Route2GateOaksAideExpShareExplainText
	waitbutton
	closetext
	end

.GotExpShare
	writetext Route2GateOaksAideFlashExplainText
	waitbutton
	closetext
	end

.NotEnough
	writetext Route2GateOaksAideNotEnoughText
	promptbutton
.SaidNo
	writetext Route2GateOaksAideLookForPokemonText
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "FLASH PAGER@"

GotFlashPagerText:
	text "PIKACHU was added"
	line "to the PPS!"
	done

Route2GateOaksAideGiveFlashText:
	ntag "AIDE:"
	text "Hi! Remember me?"
	line "I'm PROF.OAK's AIDE."

	para "PROF.OAK asked me"
	line "to give you this"
	cont "FLASH PAGER."
	done

Route2GateOaksAideAskPokemonText:
	ntag "AIDE:"
	text "PIKACHU can use"
	line "FLASH to light up"
	cont "dark caves!"

	para "Call PIKACHU from"
	line "the PAGER CARD in"
	cont "your #GEAR!"

	para "…"
	line "Oh!"

	para "If you caught 10"
	line "kinds of #MON,"
	cont "I'm also supposed"
	roll "to give you an"
	cont "EXP.SHARE!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least 10 kinds of"
	roll "#MON?"
	done

Route2GateOaksAideNotEnoughText:
	ntag "AIDE:"
	text "You have only"
	line "caught @"
	text_ram wStringBuffer3
	text " kinds"
	cont "of #MON."
	done

Route2GateOaksAideLookForPokemonText:
	ntag "AIDE:"
	text "Look for more"
	line "#MON in caves"
	cont "and tall grass!"
	done

Route2GateOaksAideCongratsText:
	ntag "AIDE:"
	text "Great! You have"
	line "caught @"
	text_ram wStringBuffer3
	text " kinds"
	cont "of #MON!"

	para "Congratulations!"
	done

Route2GateOaksAideExpShareExplainText:
	ntag "AIDE:"
	text "When a #MON is"
	line "holding EXP.SHARE,"
	cont "they will receive"
	roll "EXP from battles,"
	cont "even if they don't"
	roll "fight!"
	done
;
;	text "EXP.SHARE will"
;	line "share experience"
;	cont "from battles with"
;	roll "the #MON that"
;	cont "holds it, even if"
;	roll "they don't fight!"
;	done

Route2GateOaksAideFlashExplainText:
	ntag "AIDE:"
	text "FLASH can light up"
	line "even the darkest"
	cont "dungeons."

	para "Call PIKACHU from"
	line "the PAGER CARD in"
	cont "your #GEAR to"
	roll "use FLASH!"
	done

Route2GateOfficerScript:
	jumptext Route2GateOfficerScriptText
Route2GateOfficerScriptText:
	ntag "OFFICER:"
	text "You'll need FLASH"
	line "to get through"
	cont "ROCK TUNNEL."
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_2, 2
	warp_event  4,  0, ROUTE_2, 3
	warp_event  3,  7, ROUTE_2_SOUTH, 1
	warp_event  4,  7, ROUTE_2_SOUTH, 1
;	warp_event  3,  0, ROUTE_2, 4
;	warp_event  4,  0, ROUTE_2, 5
;	warp_event  3,  7, ROUTE_2, 6
;	warp_event  4,  7, ROUTE_2, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2GateOaksAideScript, -1
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route2GateOfficerScript, -1
