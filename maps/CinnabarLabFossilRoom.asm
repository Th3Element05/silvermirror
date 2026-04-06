	object_const_def
;	const CINNABARLAB_HELIX
;	const CINNABARLAB_DOME
;	const CINNABARLAB_AMBER

CinnabarLabFossilRoom_MapScripts:
	def_scene_scripts

	def_callbacks
;	callback MAPCALLBACK_OBJECTS, CinnabarLabFossilCallback
;
;CinnabarLabFossilCallback:
;	checkevent EVENT_FOSSIL_SCIENTIST_WORKING
;	iftrue .WhichFossil
;	disappear CINNABARLAB_HELIX
;	disappear CINNABARLAB_DOME
;	disappear CINNABARLAB_AMBER
;	endcallback
;.WhichFossil
;	checkevent EVENT_FOSSIL_SCIENTIST_WORKING_HELIX
;	iffalse .NotHelix
;	appear CINNABARLAB_HELIX
;	endcallback
;.NotHelix
;	checkevent EVENT_FOSSIL_SCIENTIST_WORKING_DOME
;	iffalse .NotDome
;	appear CINNABARLAB_AMBER
;	endcallback
;.NotDome
;	appear CINNABARLAB_AMBER
;	endcallback

CinnabarLabFossilScientistScript:
	checkevent EVENT_FOSSIL_SCIENTIST_WORKING
	iftrue .StillWorking
	checkevent EVENT_FOSSIL_SCIENTIST_WORKING_HELIX
	iftrue .GiveOmanyte
	checkevent EVENT_FOSSIL_SCIENTIST_WORKING_DOME
	iftrue .GiveKabuto
	checkevent EVENT_FOSSIL_SCIENTIST_WORKING_AMBER
	iftrue .GiveAerodactyl
	faceplayer
	opentext
	writetext CinnabarLabFossilScientistDoYouHaveFossilText
	waitbutton
	checkitem HELIX_FOSSIL
	iftrue .own_helix
	checkitem DOME_FOSSIL
	iftrue .own_dome
	checkitem OLD_AMBER
	iftrue IsOldAmber
	writetext CinnabarLabFossilScientistNoFossilText
	waitbutton
	closetext
	end

.StillWorking
	jumptextfaceplayer CinnabarLabFossilScientistGaveFossilText

.GiveOmanyte
	getmonname STRING_BUFFER_3, OMANYTE
	writetext CinnabarLabFossilScientistDoneText
	waitbutton
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .No_Room
	writetext CinnabarLabReceivedPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke OMANYTE, 30
	writetext CinnabarLabFossilScientistTakeGoodCareOfItText
	waitbutton
	closetext
	clearevent EVENT_FOSSIL_SCIENTIST_WORKING_HELIX
	end

.GiveKabuto
	getmonname STRING_BUFFER_3, KABUTO
	writetext CinnabarLabFossilScientistDoneText
	waitbutton
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .No_Room
	writetext CinnabarLabReceivedPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke KABUTO, 30
	writetext CinnabarLabFossilScientistTakeGoodCareOfItText
	waitbutton
	closetext
	clearevent EVENT_FOSSIL_SCIENTIST_WORKING_DOME
	end

.GiveAerodactyl
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext CinnabarLabFossilScientistDoneText
	waitbutton
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .No_Room
	writetext CinnabarLabReceivedPokemonText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke AERODACTYL, 30
	writetext CinnabarLabFossilScientistTakeGoodCareOfItText
	waitbutton
	closetext
	clearevent EVENT_FOSSIL_SCIENTIST_WORKING_AMBER
	end

.No_Room
	writetext CinnabarLabFossilScientistNoRoomForFossilPokemonText
	waitbutton
	closetext
	end

.own_helix
	checkitem DOME_FOSSIL
	iftrue .own_helix_and_dome
	checkitem OLD_AMBER
	iftrue .ask_helix_amber
	jump IsHelixFossil

.own_dome
	checkitem OLD_AMBER
	iftrue .ask_dome_amber
	jump IsDomeFossil

.own_helix_and_dome
	checkitem OLD_AMBER
	iftrue .ask_helix_dome_amber
	loadmenu HelixDomeMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, IsHelixFossil
	ifequal $2, IsDomeFossil
	jump .no_fossil

.ask_helix_amber
	loadmenu HelixAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, IsHelixFossil
	ifequal $2, IsOldAmber
	jump .no_fossil

.ask_dome_amber
	loadmenu DomeAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, IsDomeFossil
	ifequal $2, IsOldAmber
	jump .no_fossil

.ask_helix_dome_amber
	loadmenu HelixDomeAmberMenuDataHeader
	verticalmenu
	closewindow
	ifequal $1, IsHelixFossil
	ifequal $2, IsDomeFossil
	ifequal $3, IsOldAmber

.no_fossil:
	writetext CinnabarLabFossilScientistNoFossilText
	waitbutton
	closetext
	end

HelixDomeMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "HELIX FOSSIL@"
	db "DOME FOSSIL@"
	db "CANCEL@"

HelixAmberMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "HELIX FOSSIL@"
	db "OLD AMBER@"
	db "CANCEL@"

DomeAmberMenuDataHeader:
	db $40 ; flags
	db 04, 00 ; start coords
	db 11, 14 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 3 ; items
	db "DOME FOSSIL@"
	db "OLD AMBER@"
	db "CANCEL@"

HelixDomeAmberMenuDataHeader:
	db $40 ; flags
	db 02, 00 ; start coords
	db 11, 15 ; end coords
	dw .MenuData2
	db 1 ; default option

.MenuData2:
	db $80 ; flags
	db 4 ; items
	db "HELIX FOSSIL@"
	db "DOME FOSSIL@"
	db "OLD AMBER@"
	db "CANCEL@"

IsHelixFossil:
	getitemname STRING_BUFFER_4, HELIX_FOSSIL
	getmonname STRING_BUFFER_3, OMANYTE
	writetext CinnabarLabFossilScientistIsFossilText
	yesorno
	iffalse DeniedRessurection
	jump GiveHelixFossil

IsDomeFossil:
	getitemname STRING_BUFFER_4, DOME_FOSSIL
	getmonname STRING_BUFFER_3, KABUTO
	writetext CinnabarLabFossilScientistIsFossilText
	yesorno
	iffalse DeniedRessurection
	jump GiveDomeFossil

IsOldAmber:
	getitemname STRING_BUFFER_4, OLD_AMBER
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext CinnabarLabFossilScientistIsFossilText
	yesorno
	iffalse DeniedRessurection
	jump GiveOldAmber

DeniedRessurection:
	writetext CinnabarLabFossilScientistNoFossilText
	waitbutton
	closetext
	end

GiveHelixFossil:
	writetext CinnabarLabFossilScientistGaveFossilText
	waitbutton
	closetext
	takeitem HELIX_FOSSIL
;	appear CINNABARLAB_HELIX
	setevent EVENT_FOSSIL_SCIENTIST_WORKING_HELIX
	setevent EVENT_FOSSIL_SCIENTIST_WORKING
;	callasm FossilSetStepCount
	end

GiveDomeFossil:
	writetext CinnabarLabFossilScientistGaveFossilText
	waitbutton
	closetext
	takeitem DOME_FOSSIL
;	appear CINNABARLAB_DOME
	setevent EVENT_FOSSIL_SCIENTIST_WORKING_DOME
	setevent EVENT_FOSSIL_SCIENTIST_WORKING
;	callasm FossilSetStepCount
	end

GiveOldAmber:
	writetext CinnabarLabFossilScientistGaveFossilText
	waitbutton
	closetext
	takeitem OLD_AMBER
;	appear CINNABARLAB_AMBER
	setevent EVENT_FOSSIL_SCIENTIST_WORKING_AMBER
	setevent EVENT_FOSSIL_SCIENTIST_WORKING
;	callasm FossilSetStepCount
	end

CinnabarLabFossilScientistDoYouHaveFossilText:
	text "Hiya!"

	para "I am important"
	line "doctor!"

	para "I study here rare"
	line "#MON fossils!"

	para "You! Have you a"
	line "fossil for me?"
	done

CinnabarLabFossilScientistNoFossilText:
	text "No! Is too bad!"
	done

CinnabarLabFossilScientistIsFossilText:
	text "Oh! That is"
	line "@"
	text_ram wStringBuffer4
	text "!"

	para "Is fossil of"
	line "@"
	text_ram wStringBuffer3
	text ", a"
	cont "#MON that is"
	roll "being extinct!"

	para "You are wanting"
	line "me to bring the"
	cont "@"
	text_ram wStringBuffer3
	text " back"
	roll "to life?"
	done

CinnabarLabFossilScientistGaveFossilText:
	text "Is good!"
	
	para "But I take a"
	line "little time!"
	
	para "You go for walk"
	line "a little while…"
	done

CinnabarLabFossilScientistDoneText:
	text "Where were you?"
	
	para "Your fossil is"
	line "back to life!"
	
	para "It was"
	line "@"
	text_ram wStringBuffer3
	text "!"
	cont "Like I think!"
	done

CinnabarLabFossilScientistNoRoomForFossilPokemonText:
	text "You having no"
	line "room for it!"

	para "I hold onto it so"
	line "you go make room,"
	cont "OK?"
	done

CinnabarLabReceivedPokemonText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

CinnabarLabFossilScientistTakeGoodCareOfItText:
	text "Is very good!"
	
	para "You take good"
	line "care of it!"
	done

CinnabarLabTradeScientistScript:
	faceplayer
	opentext
	writetext CinnabarLabTradeScientistText
	promptbutton
	trade NPC_TRADE_JIM
	waitbutton
	closetext
	end

CinnabarLabTradeScientistText:
	text "I'm researching"
	line "how #MON eggs"
	cont "are created!"
	done

CinnabarLabFossilRoomHelixFossil:
	jumptext CinnabarLabFossilRoomHelixFossilText
CinnabarLabFossilRoomHelixFossilText:
	text "The HELIX FOSSIL"
	line "is being revived!"
	done

CinnabarLabFossilRoomDomeFossil:
	jumptext CinnabarLabFossilRoomDomeFossilText
CinnabarLabFossilRoomDomeFossilText:
	text "The DOME FOSSIL"
	line "is being revived!"
	done

CinnabarLabFossilRoomOldAmber:
	jumptext CinnabarLabFossilRoomOldAmberText
CinnabarLabFossilRoomOldAmberText:
	text "The OLD AMBER"
	line "is being revived!"
	done

;FossilSetStepCount:
;	ld a, 50
;	ld [wFossilStepCount], a
;	ret

;FossilCheckStepCount:
;	ld a, [wFossilStepCount]
;	cp 0
;	jr z, .yes
;	ld a, FALSE
;	ld [wScriptVar], a
;	ret
;.yes
;	ld a, TRUE
;	ld [wScriptVar], a
;	ret

CinnabarLabFossilRoom_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, CINNABAR_LAB, 4
	warp_event  3,  7, CINNABAR_LAB, 4

	def_coord_events

	def_bg_events

	def_object_events
;	object_event  3,  2, SPRITE_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarLabFossilRoomHelixFossil, EVENT_CINNABAR_LAB_HELIX_FOSSIL
;	object_event  3,  2, SPRITE_DOME_FOSSIL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CinnabarLabFossilRoomDomeFossil, EVENT_CINNABAR_LAB_DOME_FOSSIL
;	object_event  3,  2, SPRITE_OLD_AMBER, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, CinnabarLabFossilRoomOldAmber, EVENT_CINNABAR_LAB_OLD_AMBER
	object_event  4,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabFossilScientistScript, -1
	object_event  6,  6, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CinnabarLabTradeScientistScript, -1
