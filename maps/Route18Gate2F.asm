	object_const_def

Route18Gate2F_MapScripts:
	def_scene_scripts

	def_callbacks

Route18Gate2FNoahScript:
	faceplayer
	opentext
	trade NPC_TRADE_NOAH
	waitbutton
	closetext
	end

Route18Gate2FBinocularsLeft:
	jumptext Route18Gate2FPalletTownText
Route18Gate2FPalletTownText:
	text "Looked into the"
	line "binoculars."

	para "PALLET TOWN is in"
	line "the west!"
	done

Route18Gate2FBinocularsRight:
	jumptext Route18Gate2FPeopleSwimmingText
Route18Gate2FPeopleSwimmingText:
	text "Looked into the"
	line "binoculars."

	para "There are people"
	line "swimming!"
	done

Route18Gate2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  6,  7, ROUTE_18_GATE, 5

	def_coord_events

	def_bg_events
	bg_event  2,  2, BGEVENT_UP, Route18Gate2FBinocularsLeft
	bg_event  4,  2, BGEVENT_UP, Route18Gate2FBinocularsRight

	def_object_events
	object_event  5,  3, SPRITE_SUPER_NERD, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 2, 2, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route18Gate2FNoahScript, -1
