	object_const_def

Route16FuchsiaSpeechHouse_MapScripts:
	def_scene_scripts

	def_callbacks

Route16FlyHouseLassScript:
	checkevent EVENT_GOT_HM02_FLY
	iftrue .AlreadyGotFly
	faceplayer
	opentext
	writetext Route16FlyHouseLassText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_FLY
	setevent EVENT_GOT_HM02_FLY
	writetext GotFlyPagerText
	promptbutton
	writetext Route16FlyHouseExplainPagerGiveFlyText
;	promptbutton
;	verbosegiveitem TM_FLY
;	writetext Route16FlyHouseExplainFlyText
	waitbutton
	closetext
	end

.AlreadyGotFly
	jumptextfaceplayer Route16FlyHouseGoodUseText

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "FLY PAGER@"

GotFlyPagerText:
	text "PIDGEOT was"
	line "added to the PPS!"
	done

Route16FlyHouseLassText:
	text "Oh, you found my"
	line "secret retreat!"

	para "Please don't tell"
	line "anyone I'm here."
	cont "I'll make it up"
	roll "to you with this!"
	done

Route16FlyHouseExplainPagerGiveFlyText:
	text "That's a"
	line "FLY PAGER."

	para "It lets you"
	line "summon a #MON"
	cont "to take you back"
	roll "to any town."

	para "Please keep my"
	line "secret!"
;	cont "You can have this,"
;	roll "too!"
	done

;Route16FlyHouseExplainFlyText:
;	text "Use that to teach"
;	line "your own #MON"
;	cont "to use FLY!"
;	
;	para "Put it to good"
;	line "use!"
;	done

Route16FlyHouseGoodUseText:
	text "Please don't tell"
	line "anyone I'm here."
	done

Route16FlyHouseFearowScript:
	opentext
	writetext Route16FlyHouseFearowText
	cry FEAROW
	waitbutton
	closetext
	end

Route16FlyHouseFearowText:
	text "FEAROW: Kyueen!"
	done

Route16FuchsiaSpeechHouseBookshelf:
	jumpstd PictureBookshelfScript

Route16FuchsiaSpeechHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, ROUTE_16, 1
	warp_event  3,  7, ROUTE_16, 1

	def_coord_events

	def_bg_events
	bg_event  0,  1, BGEVENT_READ, Route16FuchsiaSpeechHouseBookshelf
	bg_event  1,  1, BGEVENT_READ, Route16FuchsiaSpeechHouseBookshelf

	def_object_events
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, Route16FlyHouseLassScript, -1
	object_event  6,  4, SPRITE_FEAROW, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, Route16FlyHouseFearowScript, -1
