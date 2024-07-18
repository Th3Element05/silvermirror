	object_const_def
;	const INDIGOPLATEAUPOKECENTER1F_LANCE
	const INDIGOPLATEAUPOKECENTER1F_COOLTRAINERM

IndigoPlateauPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script IndigoPlateauPokecenter1FNoop1Scene, SCENE_INDIGOPLATEAUPOKECENTER1F_FIRST_TIME
	scene_script IndigoPlateauPokecenter1FNoop2Scene, SCENE_INDIGOPLATEAUPOKECENTER1F_NOOP
;	scene_script IndigoPlateauPokecenter1FLanceScene, SCENE_INDIGOPLATEAUPOKECENTER1F_LANCE

	def_callbacks
	callback MAPCALLBACK_NEWMAP, IndigoPlateauPokecenter1FPrepareElite4Callback
	callback MAPCALLBACK_NEWMAP, IndigoPlateauFlypointCallback

IndigoPlateauPokecenter1FNoop1Scene:
IndigoPlateauPokecenter1FNoop2Scene:
	end

;IndigoPlateauPokecenter1FLanceScene:
;	sdefer IndigoPokecenterLanceGiftScript
;	end

IndigoPlateauFlypointCallback:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	endcallback

IndigoPlateauPokecenter1FPrepareElite4Callback:
	setmapscene E4_LORELEIS_ROOM, SCENE_LORELEISROOM_LOCK_DOOR
	setmapscene E4_BRUNOS_ROOM, SCENE_BRUNOSROOM_LOCK_DOOR
	setmapscene E4_AGATHAS_ROOM, SCENE_AGATHASROOM_LOCK_DOOR
	setmapscene E4_LANCES_ROOM, SCENE_LANCESROOM_LOCK_DOOR
;	setmapscene E4_CHAMPIONS_ROOM, SCENE_CHAMPIONSROOM_LOCK_DOOR
	setmapscene HALL_OF_FAME, SCENE_HALLOFFAME_ENTER
	clearevent EVENT_LORELEIS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_LORELEIS_ROOM_EXIT_OPEN
	clearevent EVENT_BRUNOS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_BRUNOS_ROOM_EXIT_OPEN
	clearevent EVENT_AGATHAS_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_AGATHAS_ROOM_EXIT_OPEN
	clearevent EVENT_LANCES_ROOM_ENTRANCE_CLOSED
	clearevent EVENT_LANCES_ROOM_EXIT_OPEN
;	clearevent EVENT_CHAMPIONS_ROOM_ENTRANCE_CLOSED
;	clearevent EVENT_CHAMPIONS_ROOM_EXIT_OPEN
	clearevent EVENT_BEAT_E4_LORELEI
	clearevent EVENT_BEAT_E4_BRUNO
	clearevent EVENT_BEAT_E4_AGATHA
	clearevent EVENT_BEAT_E4_LANCE
	clearevent EVENT_BEAT_E4_CHAMPION
	setevent EVENT_LANCES_ROOM_RIVAL
	setevent EVENT_LANCES_ROOM_OAK
	endcallback

IndigoPlateauPokecenter1FNurseScript:
	jumpstd PokecenterNurseScript

IndigoPlateauPokecenter1FClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_INDIGO_PLATEAU
	closetext
	end

IndigoPlateauPokecenter1FGymGuideScript:
	jumptextfaceplayer IndigoPlateauPokecenter1FGymGuideText
IndigoPlateauPokecenter1FGymGuideText:
	text "Yo! Champ in"
	line "making!"

	para "At #MON LEAGUE,"
	line "you have to face"
	cont "the ELITE FOUR in"
	cont "succession."

	para "If you lose, you"
	line "have to start all"
	cont "over again! This"
	cont "is it! Go for it!"
	done

IndigoPokecenterFirstVisitScript:
	turnobject INDIGOPLATEAUPOKECENTER1F_COOLTRAINERM, LEFT
	turnobject PLAYER, RIGHT
	; fallthrough
IndigoPlateauPokecenter1FCooltrainerMScript:
	setscene SCENE_INDIGOPLATEAUPOKECENTER1F_NOOP
	jumptextfaceplayer IndigoPlateauPokecenter1FCooltrainerMText
IndigoPlateauPokecenter1FCooltrainerMText:
	text "Past here, you'll"
	line "be tested by the"
	cont "ELITE FOUR!"

	para "Once you enter,"
	line "you need to beat"
	cont "them all. If you"
	cont "lose you need to"
	cont "start all over!"
	done
;
;	text "At the #MON"
;	line "LEAGUE, you'll get"
;	cont "tested by the"
;	cont "ELITE FOUR."
;
;	para "You have to beat"
;	line "them all. If you"
;	cont "lose, you have to"
;	cont "start all over!"
;	done

;IndigoPokecenterLanceGiftScript:
;	setscene SCENE_INDIGOPLATEAUPOKECENTER1F_NOOP
;	end


TeleportGuyScript:
	faceplayer
	opentext
	writetext TeleportGuyText1
	yesorno
	iffalse .No
	writetext TeleportGuyYesText
	waitbutton
	closetext
	playsound SFX_WARP_TO
	special FadeOutPalettes
	waitsfx
	warp PALLET_TOWN, 5, 6
	end

.No:
	writetext TeleportGuyNoText
	waitbutton
	closetext
	end

AbraScript:
	opentext
	writetext AbraText
	cry ABRA
	waitbutton
	closetext
	end

TeleportGuyText1:
	text "Ah! You're chal-"
	line "lenging the ELITE"

	para "FOUR? Are you sure"
	line "you're ready?"

	para "If you need to"
	line "train some more,"

	para "my ABRA can help"
	line "you."

	para "It can TELEPORT"
	line "you home."

	para "Would you like to"
	line "go home now?"
	done

TeleportGuyYesText:
	text "OK, OK. Picture"
	line "your house in your"
	cont "mind…"
	done

TeleportGuyNoText:
	text "OK, OK. The best"
	line "of luck to you!"
	done

AbraText:
	text "ABRA: Aabra…"
	done

IndigoPlateauPokecenter1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  7, 11, ROUTE_23, 1
	warp_event  8, 11, ROUTE_23, 2
	warp_event  7,  0, E4_LORELEIS_ROOM, 1
	warp_event  8,  0, E4_LORELEIS_ROOM, 2

	def_coord_events
	coord_event  7,  4, SCENE_INDIGOPLATEAUPOKECENTER1F_FIRST_TIME, IndigoPokecenterFirstVisitScript

	def_bg_events

	def_object_events
;	object_event  8,  8, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPokecenterLanceGiftScript, EVENT_INDIGO_POKECENTER_LANCE
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FCooltrainerMScript, -1
	object_event 13,  5, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FNurseScript, -1
	object_event  0,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FClerkScript, -1
	object_event  6,  9, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FGymGuideScript, EVENT_INDIGO_POKECENTER_GYM_GUIDE
	object_event 13, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, TeleportGuyScript, -1 ;EVENT_TELEPORT_GUY
	object_event 14, 10, SPRITE_ABRA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_ROCK, OBJECTTYPE_SCRIPT, 0, AbraScript, -1 ;EVENT_TELEPORT_GUY
