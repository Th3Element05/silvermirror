	object_const_def

Route11Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route11Gate2FLucasScript:
	faceplayer
	opentext
	trade NPC_TRADE_LUCAS
	waitbutton
	closetext
	end

Route11Gate2FOaksAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_ITEMFINDER
	iftrue .GotItemfinder
	writetext Route11Gate2FOaksAideAskPokemonText
	yesorno
	iffalse .SaidNo
	readvar VAR_DEXCAUGHT
	getnum STRING_BUFFER_3
	ifless 30, .NotEnough
	writetext Route11Gate2FOaksAideCongratsText
	promptbutton
	verbosegiveitem ITEMFINDER
	setevent EVENT_GOT_ITEMFINDER
.GotItemfinder
	writetext Route11Gate2FOaksAideItemfinderExplainText
	waitbutton
	closetext
	end

.NotEnough
	writetext Route11Gate2FOaksAideNotEnoughText
	promptbutton
.SaidNo
	writetext Route11Gate2FOaksAideLookForPokemonText
	waitbutton
	closetext
	end

Route11Gate2FOaksAideAskPokemonText:
	text "Hi! Remember me?"
	line "I'm PROF.OAK's"
	cont "AIDE."

	para "If you caught 30"
	line "kinds of #MON,"
	cont "I'm supposed to"
	cont "give you an"
	cont "ITEMFINDER!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least 30 kinds of"
	cont "#MON?"
	done

Route11Gate2FOaksAideNotEnoughText:
	text "You have only"
	line "caught @"
	text_ram wStringBuffer3
	text " kinds"
	cont "of #MON."
	done

Route11Gate2FOaksAideLookForPokemonText:
	text "Look for more"
	line "#MON in caves"
	cont "and tall grass!"
	done

Route11Gate2FOaksAideCongratsText:
	text "Great! You have"
	line "caught @"
	text_ram wStringBuffer3
	text " kinds"
	cont "of #MON!"
	cont "Congratulations!"
	done

Route11Gate2FOaksAideItemfinderExplainText:
	text "There are items on"
	line "the ground that"
	cont "can't be seen."

	para "ITEMFINDER will"
	line "detect an item"
	cont "close to you."

	para "It can't pinpoint"
	line "it, so you have"
	cont "to look yourself!"
	done

Route11Gate2FBinoculars:
	checkevent EVENT_ROUTE_12_SNORLAX
	iftrue .AfterSnorlax
	jumptext Route11Gate2FSnorlaxText
.AfterSnorlax
	jumptext Route11Gate2FBeautifulViewText

Route11Gate2FSnorlaxText:
	text "Looked into the"
	line "binoculars."

	para "A big #MON is"
	line "asleep on a road!"

	para "The only way to"
	line "get from CERULEAN"
	cont "CITY to LAVENDER"
	cont "is by way of the"
	cont "ROCK TUNNEL."
	done

Route11Gate2FBeautifulViewText:
	text "Looked into the"
	line "binoculars."

	para "It's a beautiful"
	line "view!"
	done

Route11Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, ROUTE_11_GATE, 5

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_UP, Route11Gate2FBinoculars
	bg_event  4,  2, BGEVENT_UP, Route11Gate2FBinoculars

	def_object_events
	object_event  2,  5, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route11Gate2FOaksAideScript, -1
	object_event  5,  2, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route11Gate2FLucasScript, -1
