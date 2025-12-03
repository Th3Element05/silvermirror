	object_const_def
	const BEHINDBILLSHOUSE_LUM_BERRY

BehindBillsHouse_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, BehindBillsHouseFruittrees

BehindBillsHouseFruittrees:
.Berry:
	checkflag ENGINE_DAILY_BEHIND_BILLS_HOUSE_FRUIT
	iftrue .NoFruit
	appear BEHINDBILLSHOUSE_LUM_BERRY
.NoFruit:
	endcallback

BehindBillsHouse_LumBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, LUM_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem LUM_BERRY, 2
	iffalse .NoRoomInBag
	disappear BEHINDBILLSHOUSE_LUM_BERRY
	setflag ENGINE_DAILY_BEHIND_BILLS_HOUSE_FRUIT
.NoRoomInBag
	closetext
	end

BehindBillsHouse_NoFruit:
	farsjump Std_NoFruitScript

BehindBillsHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  1, BILLS_HOUSE, 1
;	warp_event 16,  1, DARK_CAVE_VIOLET_ENTRANCE, 4

	def_coord_events

	def_bg_events
	bg_event 11, 19, BGEVENT_READ, BehindBillsHouse_NoFruit

	def_object_events
	object_event 11, 19, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BehindBillsHouse_LumBerry, EVENT_BEHIND_BILLS_HOUSE_LUM_BERRY
