	object_const_def
	const BILLSBACKYARD_LUM_BERRY

BillsBackYard_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, BillsBackYardFruittrees

BillsBackYardFruittrees:
.Berry:
	checkflag ENGINE_DAILY_BILLS_BACK_YARD_FRUIT
	iftrue .NoFruit
	appear BILLSBACKYARD_LUM_BERRY
.NoFruit:
	endcallback

BillsBackYard_LumBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, LUM_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem LUM_BERRY, 2
	iffalse .NoRoomInBag
	disappear BILLSBACKYARD_LUM_BERRY
	setflag ENGINE_DAILY_BILLS_BACK_YARD_FRUIT
.NoRoomInBag
	closetext
	end

BillsBackYard_NoFruit:
	farsjump Std_NoFruitScript

BillsBackYard_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 16,  1, BILLS_HOUSE, 1
;	warp_event 16,  1, DARK_CAVE_VIOLET_ENTRANCE, 4

	def_coord_events

	def_bg_events
	bg_event 11, 19, BGEVENT_READ, BillsBackYard_NoFruit

	def_object_events
	object_event 11, 19, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsBackYard_LumBerry, EVENT_BILLS_BACK_YARD_LUM_BERRY
