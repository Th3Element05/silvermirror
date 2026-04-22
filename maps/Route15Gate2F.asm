	object_const_def

Route15Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route15Gate2FOaksAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_EXP_SHARE
	iftrue .GotExpShare
	writetext Route15Gate2FOaksAideAskPokemonText
	yesorno
	iffalse .SaidNo
	readvar VAR_DEXCAUGHT
	getnum STRING_BUFFER_3
	ifless 50, .NotEnough
	writetext Route15Gate2FOaksAideCongratsText
	promptbutton
	verbosegiveitem EXP_SHARE
	setevent EVENT_GOT_EXP_SHARE
.GotExpShare
	writetext Route15Gate2FOaksAideExpShareExplainText
	waitbutton
	closetext
	end

.NotEnough
	writetext Route15Gate2FOaksAideNotEnoughText
	promptbutton
.SaidNo
	writetext Route15Gate2FOaksAideLookForPokemonText
	waitbutton
	closetext
	end

Route15Gate2FOaksAideAskPokemonText:
	ntag "AIDE:"
	text "Hi! Remember me?"
	line "I'm PROF.OAK's"
	cont "AIDE."

	para "If you caught 50"
	line "kinds of #MON,"
	cont "I'm supposed to"
	roll "give you an"
	cont "EXP.SHARE!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least 50 kinds of"
	roll "#MON?"
	done

Route15Gate2FOaksAideNotEnoughText:
	ntag "AIDE:"
	text "You have only"
	line "caught @"
	text_ram wStringBuffer3
	text " kinds"
	cont "of #MON."
	done

Route15Gate2FOaksAideLookForPokemonText:
	ntag "AIDE:"
	text "Look for more"
	line "#MON in caves"
	cont "and tall grass!"
	done

Route15Gate2FOaksAideCongratsText:
	ntag "AIDE:"
	text "Great! You have"
	line "caught @"
	text_ram wStringBuffer3
	text " kinds"
	cont "of #MON!"

	para "Congratulations!"
	done

Route15Gate2FOaksAideExpShareExplainText:
	ntag "AIDE:"
	text "EXP.SHARE will"
	line "share experience"
	cont "from battles with"
	roll "the #MON that"
	cont "holds it!"

	para "Even if they"
	line "don't fight!"
	done

Route15Gate2FBinoculars:
	jumptext Route15Gate2FSmallIslandText
Route15Gate2FSmallIslandText:
	text "Looked into the"
	line "binoculars."

	para "It looks like a"
	line "small island to"
	cont "the southwest!"
	done

Route15Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, ROUTE_15_GATE, 5

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_UP, Route15Gate2FBinoculars
	bg_event  4,  2, BGEVENT_UP, Route15Gate2FBinoculars

	def_object_events
	object_event  6,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route15Gate2FOaksAideScript, -1
