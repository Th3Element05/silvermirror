	object_const_def
	const INDIGOPLATEAUPOKECENTER1F_LANCE
	const INDIGOPLATEAUPOKECENTER1F_COOLTRAINERM

IndigoPlateauPokecenter1F_MapScripts:
	def_scene_scripts
	scene_script IndigoPlateauPokecenter1FNoop1Scene, SCENE_INDIGOPLATEAUPOKECENTER1F_FIRST_TIME
	scene_script IndigoPokecenterOpenMtSilverScript, SCENE_INDIGOPLATEAUPOKECENTER1F_LANCE
	scene_script IndigoPlateauPokecenter1FNoop2Scene, SCENE_INDIGOPLATEAUPOKECENTER1F_NOOP

	def_callbacks
	callback MAPCALLBACK_NEWMAP, IndigoPlateauPokecenter1FPrepareElite4Callback

IndigoPlateauPokecenter1FNoop1Scene:
IndigoPlateauPokecenter1FNoop2Scene:
	end

IndigoPlateauPokecenter1FPrepareElite4Callback:
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
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
	ntag "GUIDE:"
	text "Yo! CHAMP in the"
	line "making!"

	para "At #MON LEAGUE,"
	line "you have to face"
	cont "the ELITE FOUR in"
	roll "succession."

	para "If you lose, you"
	line "have to start all"
	cont "over again! This"
	roll "is it! Go for it!"
	done

IndigoPokecenterFirstVisitScript:
	turnobject INDIGOPLATEAUPOKECENTER1F_COOLTRAINERM, LEFT
	turnobject PLAYER, RIGHT
	; fallthrough
IndigoPlateauPokecenter1FCooltrainerMScript:
	setscene SCENE_INDIGOPLATEAUPOKECENTER1F_NOOP
	jumptextfaceplayer IndigoPlateauPokecenter1FCooltrainerMText
IndigoPlateauPokecenter1FCooltrainerMText:
	ntag "TRAINER:"
	text "Past here, you'll"
	line "be tested by the"
	cont "ELITE FOUR!"

;	text "At the #MON"
;	line "LEAGUE, you'll get"
;	cont "tested by the"
;	roll "ELITE FOUR."
;
	para "You have to beat"
	line "them all. If you"
	cont "lose, you have to"
	roll "start all over!"
	done


IndigoPokecenterOpenMtSilverScript:
	turnobject INDIGOPLATEAUPOKECENTER1F_LANCE, DOWN
	showemote EMOTE_SHOCK, INDIGOPLATEAUPOKECENTER1F_LANCE, 20
	applymovement INDIGOPLATEAUPOKECENTER1F_LANCE, IndigoPlateauLanceApproachesPlayerMovement
	opentext
	writetext IndigoPlateauLanceOpensMtSilverText
	waitbutton
	closetext
	applymovement INDIGOPLATEAUPOKECENTER1F_LANCE, IndigoPlateauLanceLeavesMovement
	turnobject INDIGOPLATEAUPOKECENTER1F_LANCE, DOWN
	opentext
	writetext IndigoPlateauLanceChallengeAgainText
	waitbutton
	closetext
	applymovement INDIGOPLATEAUPOKECENTER1F_LANCE, IndigoPlateauLanceLeavesMovement
	disappear INDIGOPLATEAUPOKECENTER1F_LANCE
	setevent EVENT_OPENED_MT_SILVER
	clearevent EVENT_OAK_IN_MT_SILVER
	setevent EVENT_OAKS_LAB_OAK
	setscene SCENE_INDIGOPLATEAUPOKECENTER1F_NOOP
	end

IndigoPlateauLanceOpensMtSilverText:
	ntag "LANCE:"
	text "There you are,"
	line "<PLAYER>!"

	para "We got word that"
	line "you've collected"
	cont "BADGEs from 16"
	roll "#MON GYMs!"

	para "That's an impress-"
	line "ive accomplishment,"
	cont "even for a LEAGUE"
	roll "CHAMPION!"

	para "The LEAGUE has"
	line "granted you access"
	cont "to ROUTE 28, which"
	roll "goes to MT.SILVER."

	para "You can get there"
	line "by going west from"
	cont "VICTORY ROAD GATE."

	para "It's a dangerous"
	line "place, filled with"
	cont "powerful #MON."

	para "But the LEAGUE"
	line "wouldn't be giving"
	cont "you access if you"
	roll "couldn't handle it."

	para "Still, be careful."
	done

IndigoPlateauLanceChallengeAgainText:
	ntag "LANCE:"
	text "Oh, and please"
	line "come challenge the"
	cont "ELITE FOUR again!"

	para "We all enjoy the"
	line "challenge!"
	done

IndigoPlateauLanceApproachesPlayerMovement:
	step DOWN
	step DOWN
	step_end

IndigoPlateauLanceLeavesMovement:
	step UP
	step UP
	step_end


RespawnOneOffsGuyScript:
	faceplayer
	opentext
	writetext RespawnGuyIntroText
	promptbutton
	writetext RespawnGuyAskRespawnText
	yesorno
	iffalse .No
	writetext RespawnGuyYesText
	promptbutton
	writetext RespawnGuySilenceText
	promptbutton
	closetext
	special RespawnOneOffs
	sjump AbraScript

;	playsound SFX_WARP_TO
;	special FadeOutPalettes
;	waitsfx
;	warp PALLET_TOWN, 5, 6
;	end

.No:
	writetext RespawnGuyNoText
	waitbutton
	closetext
	end

RespawnGuyIntroText:
	ntag "GRAMPS:"
	text "Ah, your journey"
	line "has taken you far"
	cont "and wide…"

	para "You've seen many"
	line "wonderous things,"
	cont "encountered some"
	roll "unique #MON…"

	para "If you've failed"
	line "to capture any of"
	cont "these unique #-"
	roll "MON, my ABRA here"
	cont "can help."

	para "It can call these"
	line "creatures back, to"
	cont "give you a second"
	roll "chance."

	para "Do you want ABRA"
	line "to call back any"
	cont "unique #MON"
	roll "that you failed to"
	cont "to capture?"
	done

RespawnGuyAskRespawnText:
	text "Respawn uncaptured"
	line "unique #MON?"
	done

RespawnGuyYesText:
	ntag "GRAMPS:"
	text "Okay. Keep those"
	line "#MON in your"
	cont "mind…"
	done

RespawnGuySilenceText:
	text "…"
	done

RespawnGuyNoText:
	ntag "GRAMPS:"
	text "Okay, Okay."
	line "I wish you luck!"
	done

AbraScript:
	opentext
	writetext AbraText
	cry ABRA
	waitbutton
	closetext
	end

AbraText:
	ntag "ABRA:"
	text "Aabra…"
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
	object_event  7,  8, SPRITE_LANCE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_INDIGO_POKECENTER_LANCE
	object_event  8,  4, SPRITE_COOLTRAINER_M, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FCooltrainerMScript, -1
	object_event 13,  5, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FNurseScript, -1
	object_event  0,  7, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_PURPLE, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FClerkScript, -1
	object_event  9,  7, SPRITE_GYM_GUIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, IndigoPlateauPokecenter1FGymGuideScript, EVENT_INDIGO_POKECENTER_GYM_GUIDE
	object_event 13, 10, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, RespawnOneOffsGuyScript, EVENT_INDIGO_POKECENTER_ABRA_GUY
	object_event 14, 10, SPRITE_ABRA, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_YELLOW, OBJECTTYPE_SCRIPT, 0, AbraScript, EVENT_INDIGO_POKECENTER_ABRA_GUY
