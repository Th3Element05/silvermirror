	object_const_def

SafariZoneWardensHome_MapScripts:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_TILES, SafariWardensHouseTilesCallback

SafariWardensHouseTilesCallback: ;House1.blk
	changeblock 0, 0, $1d ; radio
	changeblock 2, 0, $3e ; fancy shelf
	changeblock 4, 0, $3f ; fancy shelf
	changeblock 6, 0, $09 ; bookshelf
	endcallback

SafariZoneWardenScript:
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .AlreadyGotStrength
	faceplayer
	opentext
	writetext SafariZoneWardenGibberishText1
	yesorno
	iffalse .SaidNo
	checkitem GOLD_TEETH
	iftrue .GiveWardenTeeth
	writetext SafariZoneWardenGibberishText2
	waitbutton
	closetext
	end

.SaidNo
	checkitem GOLD_TEETH
	iftrue .GiveWardenTeeth
	writetext SafariZoneWardenGibberishText3
	waitbutton
	closetext
	end

.AlreadyGotStrength
	jumptextfaceplayer SafariZoneWardenExplainStrengthText

.GiveWardenTeeth
	writetext GaveSafariZoneWardenTeethText
;	playsound gavetheteeth
	promptbutton
	writetext SafariZoneWardenThanksGivePagerText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_STRENGTH
	writetext GotStrengthPagerText
	promptbutton
	writetext SafariZoneWardenGiveStrengthText
	promptbutton
;	verbosegiveitem TM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
	writetext SafariZoneWardenExplainStrengthText
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "STRENGTH PAGER@"

GotStrengthPagerText:
	text "MACHOKE was"
	line "added to the PPS!"
	done

SafariZoneWardenGibberishText1:
	text "WARDEN: Hif fuff"
	line "hefifoo!"

	para "Ha lof ha feef ee"
	line "hafahi ho. Heff"
	cont "hee fwee!"
	done

SafariZoneWardenGibberishText2:
	text "Ah howhee ho hoo!"
	line "Eef ee hafahi ho!"
	done

SafariZoneWardenGibberishText3:
	text "Ha? He ohay heh"
	line "ha hoo ee haheh!"
	done

GaveSafariZoneWardenTeethText:
	text "<PLAYER> gave the"
	line "GOLD TEETH to the"
	cont "WARDEN!"
	done

SafariZoneWardenThanksGivePagerText:
	text "The WARDEN popped"
	line "in his teeth!"

	para "WARDEN: Thanks,"
	line "kid! No one could"
	cont "understand a word"
	cont "that I said."

	para "I couldn't work"
	line "that way."
	cont "Let me give you"
	cont "something for"
	cont "your trouble."
	done

SafariZoneWardenGiveStrengthText:
	text "WARDEN: And this!"
	done

SafariZoneWardenExplainStrengthText:
	text "WARDEN: HM04"
	line "teaches STRENGTH!"

	para "It lets #MON"
	line "move boulders"
	cont "when you're out-"
	cont "side of battle."

	para "Oh yes, did you"
	line "find SECRET HOUSE"
	cont "in SAFARI ZONE?"

	para "If you do, you"
	line "win an HM!"

	para "I hear it's the"
	line "rare SURF HM."
	done

SafariWardensHouseBoulder:
	jumpstd StrengthBoulderScript

WardensHomeBookshelf:
	jumptext WardensHomeBookshelfText
WardensHomeBookshelfText:
	text "#MON fossils"
	line "and old #MON"
	cont "merchandise."
	done

SafariWardensHouseRareCandy:
	itemball RARE_CANDY

SafariZoneWardensHome_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, FUCHSIA_CITY, 9
	warp_event  3,  7, FUCHSIA_CITY, 9

	def_coord_events

	def_bg_events
	bg_event  3,  1, BGEVENT_READ, WardensHomeBookshelf
	bg_event  4,  1, BGEVENT_READ, WardensHomeBookshelf

	def_object_events
	object_event  1,  3, SPRITE_BUSINESSMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariZoneWardenScript, -1
	object_event  6,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SafariWardensHouseBoulder, -1
	object_event  6,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SafariWardensHouseRareCandy, EVENT_SAFARI_WARDENS_HOUSE_RARE_CANDY
