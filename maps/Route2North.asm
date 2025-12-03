	object_const_def
	const ROUTE2N_PNK_APRICORN

Route2North_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route2NFruittrees

Route2NFruittrees:
.Berry:
	checkflag ENGINE_DAILY_ROUTE_2_NORTH_FRUIT
	iftrue .NoFruit
	appear ROUTE2N_PNK_APRICORN
.NoFruit:
	endcallback

; fruit
Route2N_PNKApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, PNK_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem PNK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE2N_PNK_APRICORN
	setflag ENGINE_DAILY_ROUTE_2_NORTH_FRUIT
.NoRoomInBag
	closetext
	end

Route2N_NoFruit:
	farsjump Std_NoFruitScript

; bg text
Route2DiglettsCaveSign:
	jumptext Route2DiglettsCaveSignText
Route2DiglettsCaveSignText:
	text "DIGLETT'S CAVE"
	done

Route2North_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 15, 17, ROUTE_2_NUGGET_HOUSE, 1
	warp_event 16, 33, ROUTE_2_GATE, 1
	warp_event 17, 33, ROUTE_2_GATE, 2
	warp_event 12,  9, DIGLETTS_CAVE, 3
	warp_event  3, 11, VIRIDIAN_FOREST_GATE_N, 1
	warp_event  4, 11, VIRIDIAN_FOREST_GATE_N, 2

	def_coord_events

	def_bg_events
	bg_event 13,  3, BGEVENT_READ, Route2N_NoFruit
	bg_event 11, 11, BGEVENT_READ, Route2DiglettsCaveSign

	def_object_events
	object_event 13,  3, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route2N_PNKApricorn, EVENT_ROUTE_2N_PNK_APRICORN

;.PinkOverYellowOBPalette