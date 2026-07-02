	object_const_def
	const BILLSBACKYARD_LUM_BERRY
;	const BILLSBACKYARD_SUN_STONE
;	const BILLSBACKYARD_DUSK_STONE

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
	giveitem LUM_BERRY, 2
	iffalse .BillsBackYard_NoRoomInBag
	farwritetext _PickedBerriesText
	disappear BILLSBACKYARD_LUM_BERRY
	setflag ENGINE_DAILY_BILLS_BACK_YARD_FRUIT
	playsound SFX_ITEM
	waitsfx
	promptbutton
	farwritetext _BerriesInBerryPocketText
	waitbutton
	closetext
	end

.BillsBackYard_NoRoomInBag:
	farwritetext _FruitPackIsFullText
	waitbutton
	closetext
	end

BillsBackYard_NoFruit:
	farsjump Std_NoFruitScript


;BehindBillsHouse_SunStoneScript:
;; This whole script is written out rather than as an itemball
;; Due to only being available during the DAY
;	getitemname STRING_BUFFER_3, SUN_STONE
;	giveitem SUN_STONE
;	iffalse BehindBillsHouse_BagFull
;	disappear BILLSBACKYARD_SUN_STONE
;	opentext
;	getitemname STRING_BUFFER_3, SUN_STONE
;	writetext Text_FoundSunDuskStone
;	playsound SFX_ITEM
;	waitsfx
;	itemnotify
;	closetext
;	end

;BehindBillsHouse_DuskStoneScript:
;; This whole script is written out rather than as an itemball
;; Due to only being available during the NITE
;	getitemname STRING_BUFFER_3, DUSK_STONE
;	giveitem DUSK_STONE
;	iffalse BehindBillsHouse_BagFull
;	disappear BILLSBACKYARD_DUSK_STONE
;	opentext
;	getitemname STRING_BUFFER_3, DUSK_STONE
;	writetext Text_FoundSunDuskStone
;	playsound SFX_ITEM
;	waitsfx
;	itemnotify
;	closetext
;	end

;BehindBillsHouse_BagFull:
;	opentext
;	writetext Text_FoundSunDuskStone
;	promptbutton
;	writetext Text_NoRoomForSunDuskStone
;	waitbutton
;	closetext
;	end

;Text_FoundSunDuskStone:
;	text "<PLAYER> found"
;	line "@"
;	text_ram wStringBuffer3
;	text "!"
;	done

;Text_NoRoomForSunDuskStone:
;	text "But <PLAYER>'s pack"
;	line "is full."
;	done


BillsBackYard_MapEvents:
	db 0, 0 ; filler

	def_warp_events
;	warp_event 16,  1, BILLS_HOUSE, 1
;	warp_event 16,  1, DARK_CAVE_VIOLET_ENTRANCE, 4

	def_coord_events

	def_bg_events
	bg_event 11, 19, BGEVENT_READ, BillsBackYard_NoFruit

	def_object_events
	object_event 11, 19, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, BillsBackYard_LumBerry, EVENT_BILLS_BACK_YARD_LUM_BERRY
;	object_event  9, 17, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BillsBackYardSunStone, EVENT_BILLS_BACK_YARD_SUN_STONE
;	object_event 11, 16, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, BillsBackYardDuskStone, EVENT_BILLS_BACK_YARD_DUSK_STONE
