	object_const_def
	const ROUTE46_CHERI_BERRY
	const ROUTE46_SITRUS_BERRY

Route46_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, Route46Fruittrees

Route46Fruittrees:
	checkflag ENGINE_DAILY_ROUTE_46_FRUIT
	iftrue .NoFruit
	appear ROUTE46_CHERI_BERRY
	appear ROUTE46_SITRUS_BERRY
.NoFruit:
	endcallback

; fruit
Route46_CheriBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, CHERI_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem CHERI_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE46_CHERI_BERRY
	setflag ENGINE_DAILY_ROUTE_46_FRUIT
.NoRoomInBag
	closetext
	end

Route46_SitrusBerry:
	opentext
	farwritetext _FruitBearingTreeText
	promptbutton
	getitemname STRING_BUFFER_3, SITRUS_BERRY
	farwritetext _HeyItsFruitText
	promptbutton
	verbosegiveitem SITRUS_BERRY, 2
	iffalse .NoRoomInBag
	disappear ROUTE46_SITRUS_BERRY
	setflag ENGINE_DAILY_ROUTE_46_FRUIT
.NoRoomInBag
	closetext
	end

Route46_NoFruit:
	farsjump Std_NoFruitScript

; trainers
TrainerCoolDuoThomAndKae_Thom:
	trainer COOL_DUO, THOMANDKAE, EVENT_BEAT_COOL_DUO_THOMANDKAE, CoolDuoThomSeenText, CoolDuoThomAndKaeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoolDuoThomAfterBattleText
	waitbutton
	closetext
	end

TrainerCoolDuoThomAndKae_Kae:
	trainer COOL_DUO, THOMANDKAE, EVENT_BEAT_COOL_DUO_THOMANDKAE, CoolDuoKaeSeenText, CoolDuoThomAndKaeBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext CoolDuoKaeAfterBattleText
	waitbutton
	closetext
	end

CoolDuoThomSeenText:
	text "THOM: We've been"
	line "raising our #-"
	cont "MON together!"

	para "Will you battle"
	line "with us?"
	done

CoolDuoKaeSeenText:
	text "KAE: We've been"
	line "raising our #-"
	cont "MON together!"

	para "Will you battle"
	line "with us?"
	done

CoolDuoThomAndKaeBeatenText:
	text "Wha…? We lost?"
	done

CoolDuoThomAfterBattleText:
	text "We did our best,"
	line "but came up short."

	para "No excuses--I"
	line "admit we lost."
	done

CoolDuoKaeAfterBattleText:
	text "We've been to many"
	line "GYMs, but the GYM"
	cont "in GOLDENROD is my"
	cont "favorite."

	para "It's filled with"
	line "pretty flowers!"
	done

TrainerHikerAlec:
	trainer HIKER, ALEC, EVENT_BEAT_HIKER_ALEC, HikerAlecSeenText, HikerAlecBeatenText, 0, .Script
.Script:
	endifjustbattled
	opentext
	writetext HikerAlecAfterBattleText
	waitbutton
	closetext
	end

HikerAlecSeenText:
	text "Awright! I'll show"
	line "you the power of"
	cont "mountain #MON!"
	done

HikerAlecBeatenText:
	text "Mercy! You showed"
	line "me your power!"
	done

HikerAlecAfterBattleText:
	text "It's over. I don't"
	line "mind. We HIKERs"
	cont "are like that."
	done

; text
Route46Sign:
	jumptext Route46SignText
Route46SignText:
	text "ROUTE 46"
	line "MOUNTAIN RD. AHEAD"
	done

; items
Route46XSpeed:
	itemball X_SPEED

Route46_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 33, ROUTE_29_ROUTE_46_GATE, 1
	warp_event  8, 33, ROUTE_29_ROUTE_46_GATE, 2
	warp_event 14,  5, DARK_CAVE_VIOLET_ENTRANCE, 3

	def_coord_events

	def_bg_events
	bg_event  8,  6, BGEVENT_READ, Route46_NoFruit
	bg_event  7,  5, BGEVENT_READ, Route46_NoFruit
	bg_event  9, 27, BGEVENT_READ, Route46Sign

	def_object_events
	object_event  8,  6, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route46_CheriBerry, EVENT_ROUTE_46_CHERI_BERRY
	object_event  7,  5, SPRITE_BERRY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, Route46_SitrusBerry, EVENT_ROUTE_46_SITRUS_BERRY
	object_event  4, 14, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCoolDuoThomAndKae_Thom, -1 ;ted
	object_event  3, 13, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_TRAINER, 2, TrainerCoolDuoThomAndKae_Kae, -1 ;erin
	object_event 12, 19, SPRITE_POKEFAN_M, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_TRAINER, 2, TrainerHikerAlec, -1 ;bailey
	object_event  1, 15, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, Route46XSpeed, EVENT_ROUTE_46_X_SPEED
