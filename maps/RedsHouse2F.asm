RedsHouse2F_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, RedsHouse2FHouseTilesCallback

RedsHouse2FHouseTilesCallback:
	changeblock 4, 2, $32 ; n64
	changeblock 0, 4, $1e ; yellow bed
	endcallback

RedsHouse2FYoungChris:
	faceplayer
	opentext
	readvar VAR_PARTYCOUNT
	ifgreater 1, .MoreThanOnePokemon
	writetext RedsHouse2FChrisPointsOneText
	promptbutton
	checkpokemail RedsHouse2FDummyText
	ifequal POKEMAIL_REFUSED, .Refused
;	ifequal POKEMAIL_WRONG_MAIL, .Proceed
;	ifequal POKEMAIL_NO_MAIL, .Proceed
;	ifequal POKEMAIL_LAST_MON, .Proceed
	; POKEMAIL_CORRECT
	sjump .Proceed

.MoreThanOnePokemon:
	writetext RedsHouse2FChrisPointsText
	promptbutton
	checkpokemail RedsHouse2FDummyText
	ifequal POKEMAIL_REFUSED, .Refused
;	ifequal POKEMAIL_WRONG_MAIL, .Proceed
;	ifequal POKEMAIL_NO_MAIL, .Proceed
;	ifequal POKEMAIL_LAST_MON, .Proceed
	; POKEMAIL_CORRECT
	; fallthrough

.Proceed:
	closetext
	random 3
	ifequal 0, .Love
	showemote EMOTE_HAPPY, LAST_TALKED, 20
	opentext
	writetext RedsHouse2FChrisHappyText
	promptbutton
	random 3
;	ifequal 0, .sitrus ;fallthrough
	ifequal 1, .leppa
	ifequal 2, .lum

;.sitrus
	verbosegiveitem SITRUS_BERRY
	closetext
	end

.leppa
	verbosegiveitem LEPPA_BERRY
	closetext
	end

.lum
	verbosegiveitem LUM_BERRY
	closetext
	end

.Love:
	showemote EMOTE_HEART, LAST_TALKED, 20
	opentext
	writetext RedsHouse2FChrisLoveText
	promptbutton
	verbosegiveitem BIG_MUSHROOM
	closetext
	end

.Refused:
	closetext
	showemote EMOTE_SAD, LAST_TALKED, 20
	opentext
	writetext RedsHouse2FChrisSadText
	waitbutton
	closetext
	end

RedsHouse2FChrisPointsOneText:
	text "<……>"

	para "The boy's pointing"
	line "at the #BALL"
	cont "on your belt."
	done

RedsHouse2FChrisPointsText:
	text "<……>"

	para "The boy's pointing"
	line "at the #BALLs"
	cont "on your belt."
	done

RedsHouse2FChrisHappyText:
	text "The boy looks"
	line "happy!"
	done

RedsHouse2FChrisLoveText:
	text "The boy looks"
	line "very happy!"
	done

RedsHouse2FChrisSadText:
	text "The boy looks"
	line "disappointed."
	done

RedsHouse2FDummyText:
	db   "dummy"
	next "text@"

RedsHouse2FN64Script:
	jumptext RedsHouse2FN64Text

RedsHouse2FPCScript:
	jumptext RedsHouse2FPCText

RedsHouse2FN64Text:
	text "<PLAYER> played the"
	line "N64."

	para "Better get going."
	done

RedsHouse2FPCText:
	text "It's a PC."

	para "…"

	para "You don't know"
	line "the password."
	done

RedsHouse2F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	def_coord_events

	def_bg_events
	bg_event  4,  2, BGEVENT_READ, RedsHouse2FN64Script
	bg_event  2,  1, BGEVENT_READ, RedsHouse2FPCScript

	def_object_events
	object_event  1,  4, SPRITE_BOY, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RedsHouse2FYoungChris, -1
