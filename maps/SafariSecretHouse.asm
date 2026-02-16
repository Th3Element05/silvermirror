	object_const_def

SafariSecretHouse_MapScripts:
	def_scene_scripts

	def_callbacks

SafariSecretHouseOfficer:
	faceplayer
	checkevent EVENT_GOT_HM03_SURF
	iftrue .AlreadyGotSurf
	opentext
	writetext SafariSecretHouseGiveSurfText
	verbosegiveitem TM_SURF
	writetext SafariSecretHouseExplainSurfText
	promptbutton
	writetext SafariSecretHouseGivePagerText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_SURF
	setevent EVENT_GOT_HM03_SURF
	writetext GotSurfPagerText
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "SURF PAGER@"

.AlreadyGotSurf
	jumptext SafariSecretHouseExplainSurfText

GotSurfPagerText:
	text "LAPRAS was"
	line "added to the PPS!"
	done

SafariSecretHouseGiveSurfText:
	text "Congratulations!"

	para "Anyone who finds"
	line "the SECRET HOUSE"
	cont "wins an HM03!"
	done

SafariSecretHouseExplainSurfText:
	text "HM03 is SURF!"

	para "It's a powerful"
	line "WATER attack!"
	done

SafariSecretHouseGivePagerText:
	text "And since you are"
	line "the first trainer"
	cont "to make it here,"
	cont "you also win a"
	cont "SURF PAGER!"
	done

SafariSecretHouse_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, SAFARI_ZONE_AREA_4, 8
	warp_event  3,  7, SAFARI_ZONE_AREA_4, 8

	def_coord_events

	def_bg_events

	def_object_events
	object_event  2,  2, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, SafariSecretHouseOfficer, 0
