	object_const_def
	const ROUTE1_ORAN_BERRY
	const ROUTE1_BLK_APRICORN

Route1_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route1Fruittrees

Route1Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_1_FRUIT
	iftrue .NoFruit
	appear ROUTE1_ORAN_BERRY
	appear ROUTE1_BLK_APRICORN
.NoFruit:
	endcallback

; fruit
Route1_OranBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, ORAN_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem ORAN_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE1_ORAN_BERRY
	setflag ENGINE_DAILY_ROUTE_1_FRUIT
.NoRoomInBag
	closetext
	end

Route1_BLKApricorn:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, BLK_APRICORN
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem BLK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE1_BLK_APRICORN
	setflag ENGINE_DAILY_ROUTE_1_FRUIT
.NoRoomInBag
	closetext
	end

Route1_NoFruit:
	farsjump Std_NoFruitScript

;Route1BerryTreeText:
;	text "It's a"
;	line "BERRY tree…"
;	done
;
;Route1HeyItsBerryText:
;	text "Hey! It's"
;	line "ORAN BERRY!"
;	done
;
;Route1ApricornTreeText:
;	text "It's an"
;	line "APRICORN tree…"
;	done
;
;Route1HeyItsApricornText:
;	text "Hey! It's"
;	line "BLK APRICORN!"
;	done
;
;Route1NothingHereText:
;	text "There's nothing"
;	line "here…"
;	done

; npc
Route1PotionSample:
	faceplayer
	opentext
	checkevent EVENT_ROUTE_1_GOT_POTION_SAMPLE
	iftrue .GotPotion
	writetext Route1PotionSampleText
	promptbutton
	verbosegiveitem POTION
	iffalse .NoRoom
	setevent EVENT_ROUTE_1_GOT_POTION_SAMPLE
.GotPotion:
	writetext Route1AlsoHavePokeballsText
	waitbutton
.NoRoom:
	closetext
	end

Route1PotionSampleText:
	text "Hi! I work at a"
	line "#MON MART."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "VIRIDIAN CITY."

	para "I know, I'll give"
	line "you a sample!"
	
	para "Here you go!"
	done

Route1AlsoHavePokeballsText:
	text "We also carry"
	line "#BALLs for"
	cont "catching #MON!"
	done

Route1YoungsterLedges:
	jumptextfaceplayer Route1YoungsterLedgesText
Route1YoungsterLedgesText:
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to PALLET TOWN"
	cont "quicker that way."
	done

; bg text
Route1Sign:
	jumptext Route1SignText
Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done
;	text "ROUTE 1"
;	line "PALLET TOWN -"
;	cont "VIRIDIAN CITY"
;	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  7,  7, BGEVENT_READ, Route1_NoFruit
	bg_event  5,  7, BGEVENT_READ, Route1_NoFruit
	bg_event  9, 27, BGEVENT_READ, Route1Sign

	def_object_events
	object_event  7,  7, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route1_OranBerry, EVENT_ROUTE_1_ORAN_BERRY
	object_event  5,  7, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route1_BLKApricorn, EVENT_ROUTE_1_BLK_APRICORN
	object_event  5, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1PotionSample, -1
	object_event 15, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, Route1YoungsterLedges, -1

;.GreyOverYellowOBPalette