	object_const_def

Route11Gate_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, Route11GateTilesCallback

Route11GateTilesCallback:
	changeblock 2, 6, $12 ; open counter
	changeblock 4, 6, $1b ; open counter
	changeblock 4, 8, $19 ; stairs
	endcallback

;Route11GateOaksAideScript:
;	faceplayer
;	opentext
;	checkevent EVENT_GOT_ITEMFINDER
;	iftrue .GotItemfinder
;	writetext Route11GateOaksAideAskPokemonText
;	yesorno
;	iffalse .SaidNo
;	readvar VAR_DEXCAUGHT
;	getnum STRING_BUFFER_3
;	ifless 30, .NotEnough
;	writetext Route11GateOaksAideCongratsText
;	promptbutton
;	verbosegiveitem ITEMFINDER
;	setevent EVENT_GOT_ITEMFINDER
;.GotItemfinder
;	writetext Route11GateOaksAideItemfinderExplainText
;	waitbutton
;	closetext
;	end
;
;.NotEnough
;	writetext Route11GateOaksAideNotEnoughText
;	promptbutton
;.SaidNo
;	writetext Route11GateOaksAideLookForPokemonText
;	waitbutton
;	closetext
;	end
;
;Route11GateOaksAideAskPokemonText:
;	text "Hi! Remember me?"
;	line "I'm PROF.OAK's"
;	cont "AIDE."
;
;	para "If you caught 30"
;	line "kinds of #MON,"
;	cont "I'm supposed to"
;	cont "give you an"
;	cont "ITEMFINDER!"
;
;	para "So, <PLAYER>! Have"
;	line "you caught at"
;	cont "least 30 kinds of"
;	cont "#MON?"
;	done
;
;Route11GateOaksAideNotEnoughText:
;	text "You have only"
;	line "caught @"
;	text_ram wStringBuffer3
;	text " kinds"
;	cont "of #MON."
;	done
;
;Route11GateOaksAideLookForPokemonText:
;	text "Look for more"
;	line "#MON in caves"
;	cont "and tall grass!"
;	done
;
;Route11GateOaksAideCongratsText:
;	text "Great! You have"
;	line "caught @"
;	text_ram wStringBuffer3
;	text " kinds"
;	cont "of #MON!"
;	cont "Congratulations!"
;	done
;
;Route11GateOaksAideItemfinderExplainText:
;	text "There are items on"
;	line "the ground that"
;	cont "can't be seen."
;
;	para "ITEMFINDER will"
;	line "detect an item"
;	cont "close to you."
;
;	para "It can't pinpoint"
;	line "it, so you have"
;	cont "to look yourself!"
;	done

Route11GateOfficerScript:
	jumptext Route11GateOfficerText
Route11GateOfficerText:
	text "When you catch"
	line "lots of #MON,"
	cont "isn't it hard to"
	cont "think up names?"

	para "In LAVENDER TOWN,"
	line "there's a man who"
	cont "rates #MON"
	cont "nicknames."

	para "He'll help you"
	line "rename them too!"
	done

;Route11GateDebugItemfinder:
;	hiddenitem ITEMFINDER, EVENT_GOT_ITEMFINDER

Route11Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  0,  4, ROUTE_11, 2
	warp_event  0,  5, ROUTE_11, 3
	warp_event  7,  4, ROUTE_12, 2
	warp_event  7,  5, ROUTE_12, 3
	warp_event  4,  8, ROUTE_11_GATE_2F, 1

	def_coord_events

	def_bg_events
;	bg_event 0,  0, BGEVENT_ITEM, Route11GateDebugItemfinder

	def_object_events
	object_event  4,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route11GateOfficerScript, -1
;	object_event  3,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11GateOaksAideScript, -1
