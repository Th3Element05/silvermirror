	object_const_def
	const ROUTE_1_YOUNGSTER1
	const ROUTE_1_YOUNGSTER2
	const ROUTE_1_BERRY
	const ROUTE_1_APRICORN

Route1_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route1Fruittrees

Route1Fruittrees:
.Berry:
	checkflag ENGINE_DAILY_ROUTE_1_BERRY
	iftrue .NoBerry
	appear ROUTE_1_BERRY
.NoBerry:
	;fallthrough
.Apricorn:
	checkflag ENGINE_DAILY_ROUTE_1_APRICORN
	iftrue .NoApricorn
	appear ROUTE_1_APRICORN
.NoApricorn:
	endcallback

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

Route1YoungsterLedges:
	jumptextfaceplayer Route1YoungsterLedgesText
	
Route1Sign:
	jumptext Route1SignText

Route1BerryTree:
	opentext
	writetext Route1BerryTreeText
	promptbutton
	writetext Route1HeyItsBerryText
	promptbutton
	verbosegiveitem PERSIM_BERRY
	iffalse .NoRoomInBag
	disappear ROUTE_1_BERRY
	setflag ENGINE_DAILY_ROUTE_1_BERRY
.NoRoomInBag
	closetext
	end

Route1ApricornTree:
	opentext
	writetext Route1ApricornTreeText
	promptbutton
	writetext Route1HeyItsApricornText
	promptbutton
	verbosegiveitem BLK_APRICORN
	iffalse .NoRoomInBag
	disappear ROUTE_1_APRICORN
	setflag ENGINE_DAILY_ROUTE_1_APRICORN
.NoRoomInBag
	closetext
	end

Route1NoBerry:
	opentext
	writetext Route1BerryTreeText
	promptbutton
	writetext Route1NothingHereText
	waitbutton
	closetext
	end

Route1NoApricorn:
	opentext
	writetext Route1ApricornTreeText
	promptbutton
	writetext Route1NothingHereText
	waitbutton
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
	line "# BALLs for"
	cont "catching #MON!"
	done

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

Route1SignText:
	text "ROUTE 1"

	para "PALLET TOWN -"
	line "VIRIDIAN CITY"
	done
;	text "ROUTE 1"
;	line "PALLET TOWN -"
;	cont "VIRIDIAN CITY"
;	done

Route1BerryTreeText:
	text "It's a"
	line "BERRY tree…"
	done

Route1HeyItsBerryText:
	text "Hey! It's"
	line "PERSIM BERRY!"
	done

Route1ApricornTreeText:
	text "It's an"
	line "APRICORN tree…"
	done

Route1HeyItsApricornText:
	text "Hey! It's"
	line "BLK APRICORN!"
	done

Route1NothingHereText:
	text "There's nothing"
	line "here…"
	done

Route1_MapEvents:
	db 0, 0 ; filler

	def_warp_events

	def_coord_events

	def_bg_events
	bg_event  9, 27, BGEVENT_READ, Route1Sign
	bg_event  7,  7, BGEVENT_READ, Route1NoBerry
	bg_event  5,  7, BGEVENT_READ, Route1NoApricorn

	def_object_events
	object_event  5, 24, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route1PotionSample, -1
	object_event 15, 13, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route1YoungsterLedges, -1
	object_event  7,  7, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_PINK, OBJECTTYPE_SCRIPT, 0, Route1BerryTree, EVENT_ROUTE_1_BERRY
	object_event  5,  7, SPRITE_APRICORN, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_SILVER, OBJECTTYPE_SCRIPT, 0, Route1ApricornTree, EVENT_ROUTE_1_APRICORN
