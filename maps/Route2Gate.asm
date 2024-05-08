	object_const_def
	const ROUTE2GATE_SCIENTIST

Route2Gate_MapScripts:
	def_scene_scripts

	def_callbacks



;	writetext SSAnne2FCaptainThanksGivePagerText
;	promptbutton
;	stringtotext .pagercardname, MEM_BUFFER_1
;	scall .JumpstdReceiveItem
;	setflag ENGINE_PAGER_CUT
;	writetext GotCutPagerText
;	promptbutton
;	writetext SSAnne2FCaptainExplainPagerGiveCutText
;	promptbutton
;	verbosegiveitem HM_CUT
;	setevent EVENT_GOT_HM01_CUT
;	writetext SSAnne2FCaptianExplainCutText
;	waitbutton
;	closetext
;	end
;
;.JumpstdReceiveItem:
;	jumpstd ReceiveItemScript
;	end
;
;.pagercardname
;	db "CUT PAGER@"
;
;GotCutPagerText:
;	text "SCYTHER was"
;	line "added to the PPS!"
;	done



Route2GateOaksAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .GotFlash
	writetext Route2GateOaksAideAskPokemonText
	yesorno
	iffalse .SaidNo
	readvar VAR_DEXCAUGHT
	getnum STRING_BUFFER_3
	ifless 10, .NotEnough
	writetext Route2GateOaksAideCongratsText
	promptbutton
	stringtotext .pagercardname, MEM_BUFFER_1
	scall .JumpstdReceiveItem
	setflag ENGINE_PAGER_FLASH
	writetext GotFlashPagerText
	promptbutton
	writetext Route2GateOaksAideExplainPagerGiveFlashText
	promptbutton
	verbosegiveitem HM_FLASH
	setevent EVENT_GOT_HM05_FLASH
.GotFlash
	writetext Route2GateOaksAideFlashExplainText
	waitbutton
	closetext
	end

.NotEnough
	writetext Route2GateOaksAideNotEnoughText
	promptbutton
.SaidNo
	writetext Route2GateOaksAideLookForPokemonText
	waitbutton
	closetext
	end

.JumpstdReceiveItem:
	jumpstd ReceiveItemScript
	end

.pagercardname
	db "FLASH PAGER@"

GotFlashPagerText:
	text "PIKACHU was"
	line "added to the PPS!"
	done

Route2GateOaksAideAskPokemonText:
	text "Hi! Remember me?"
	line "I'm PROF.OAK's"
	cont "AIDE."

	para "If you caught 10"
	line "kinds of #MON,"
	cont "I'm supposed to"
	cont "give you a"
	cont "FLASH PAGER!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least 10 kinds of"
	cont "#MON?"
	done

Route2GateOaksAideNotEnoughText:
	text "You have only"
	line "caught @"
	text_ram wStringBuffer3
	text " kinds"
	cont "of #MON."
	done

Route2GateOaksAideLookForPokemonText:
	text "Look for more"
	line "#MON in caves"
	cont "and tall grass!"
	done

Route2GateOaksAideCongratsText:
	text "Great! You have"
	line "caught @"
	text_ram wStringBuffer3
	text " kinds"
	cont "of #MON!"
	cont "Congratulations!"
	done

Route2GateOaksAideExplainPagerGiveFlashText:
	text "Use that PAGER"
	line "to summon PIKACHU"
	cont "to use FLASH!"

	para "PROF.OAK wanted"
	line "you to have this,"
	cont "too.  So you can"
	cont "teach FLASH to"
	cont "your own #MON!"
	done

Route2GateOaksAideFlashExplainText:
	text "The HM FLASH can"
	line "light up even the"
	cont "darkest dungeons."
;
;	para "You'll need it to"
;	line "get through the"
;	cont "ROCK TUNNEL to"
;	cont "LAVENDER TOWN!"
	done

Route2Gate_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  0, ROUTE_2_NORTH, 2
	warp_event  4,  0, ROUTE_2_NORTH, 3
	warp_event  3,  7, ROUTE_2_SOUTH, 1
	warp_event  4,  7, ROUTE_2_SOUTH, 1
;	warp_event  3,  0, ROUTE_2, 4
;	warp_event  4,  0, ROUTE_2, 5
;	warp_event  3,  7, ROUTE_2, 6
;	warp_event  4,  7, ROUTE_2, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  5,  4, SPRITE_SCIENTIST, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 2, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route2GateOaksAideScript, -1
